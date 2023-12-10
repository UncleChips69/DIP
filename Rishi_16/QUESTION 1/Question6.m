% Create a 3-D array for a red colored image (RGB)

% Each channel is a 2-D array
red_channel = ones(100, 100) * 255; % Red color
green_channel = zeros(100, 100); % Green color
blue_channel = zeros(100, 100); % Blue color

% Combine the channels to create a red colored image
red_data = cat(3, red_channel, green_channel, blue_channel);

% Convert the data to uint8 (this is necessary for imwrite to work properly)
red_data_uint8 = uint8(red_data);

% Write the red data to an image file
imwrite(red_data_uint8, 'LAAL.jpeg');


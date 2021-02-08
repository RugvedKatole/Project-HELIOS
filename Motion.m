%
% TestScript for Assignment 1
%

%% Define a small map
map = false(15);
% map=logical(map);
% Add an obstacle
% map (1:5, 6) = true;
start_coords = [1,1;2,15;3,1;4,15;5,1;6,15;7,1;8,15;9,1;10,15;11,1;12,15;13,1;14,15];
dest_coords  = [2,15;3,1;4,15;5,1;6,15;7,1;8,15;9,1;10,15;11,1;12,15;13,1;14,15;15,1];

%%
close all;

i=1
while true
%     map(start_coords(i,1)+1,start_coords(i,2))=true;
    [route, numExpanded] = AStarGrid (map, [i,1], [i,15]);
    i=i+1;
    if i>15
        break;
    end
    [route, numExpanded] = AStarGrid (map, [i,15], [i,1]);
    i=i+1;
    hold on
end
%[route, numExpanded] = DijkstraGrid (map, start_coords, dest_coords);
% Uncomment following line to run Astar
%[route, numExpanded] = AStarGrid (map, start_coords, dest_coords);

%HINT: With default start and destination coordinates defined above

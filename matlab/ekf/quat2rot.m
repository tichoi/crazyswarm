function R = quat2rot(q)
%R = quat2rot(q)
% R is a 3x3 rotation matrix from quaternion q
%Q = permute(Q,[1 3 2]);

%R = [
%   Q(1,1,:).^2+Q(2,1,:).^2-Q(3,1,:).^2-Q(4,1,:).^2 2.0.*(Q(2,1,:).*Q(3,1,:)-Q(1,1,:).*Q(4,1,:))   2.0.*(Q(2,1,:).*Q(4,1,:)+Q(1,1,:).*Q(3,1,:))
%   2.0.*(Q(2,1,:).*Q(3,1,:)+Q(1,1,:).*Q(4,1,:))   Q(1,1,:).^2-Q(2,1,:).^2+Q(3,1,:).^2-Q(4,1,:).^2 2.0.*(Q(3,1,:).*Q(4,1,:)-Q(1,1,:).*Q(2,1,:))
%   2.0.*(Q(2,1,:).*Q(4,1,:)-Q(1,1,:).*Q(3,1,:))   2.0.*(Q(3,1,:).*Q(4,1,:)+Q(1,1,:).*Q(2,1,:))   Q(1,1,:).^2-Q(2,1,:).^2-Q(3,1,:).^2+Q(4,1,:).^2];
qx = q(1);
qy = q(2);
qz = q(3);
qw = q(4);

R = [1 - 2*qy^2 - 2*qz^2, 2*qx*qy - 2*qz*qw,   2*qx*qz + 2*qy*qw; ...
     2*qx*qy + 2*qz*qw,   1 - 2*qx^2 - 2*qz^2, 2*qy*qz - 2*qx*qw; ...
     2*qx*qz - 2*qy*qw,   2*qy*qz + 2*qx*qw,   1 - 2*qx^2 - 2*qy^2];

function [R,Q] = rq(M)
    %Performs RQ-decomposition of matrix M
    [Q,R] = qr(rot90(M,3));
    R = rot90(R,2)';
    Q = rot90(Q);
end
module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '3491f6ff48060c29bebd74d2fe155b97'),
  },
});


-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-crlconfiguration.html

module Stratosphere.ResourceProperties.ACMPCACertificateAuthorityCrlConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for ACMPCACertificateAuthorityCrlConfiguration.
-- See 'acmpcaCertificateAuthorityCrlConfiguration' for a more convenient
-- constructor.
data ACMPCACertificateAuthorityCrlConfiguration =
  ACMPCACertificateAuthorityCrlConfiguration
  { _aCMPCACertificateAuthorityCrlConfigurationCustomCname :: Maybe (Val Text)
  , _aCMPCACertificateAuthorityCrlConfigurationEnabled :: Maybe (Val Bool)
  , _aCMPCACertificateAuthorityCrlConfigurationExpirationInDays :: Maybe (Val Integer)
  , _aCMPCACertificateAuthorityCrlConfigurationS3BucketName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ACMPCACertificateAuthorityCrlConfiguration where
  toJSON ACMPCACertificateAuthorityCrlConfiguration{..} =
    object $
    catMaybes
    [ fmap (("CustomCname",) . toJSON) _aCMPCACertificateAuthorityCrlConfigurationCustomCname
    , fmap (("Enabled",) . toJSON) _aCMPCACertificateAuthorityCrlConfigurationEnabled
    , fmap (("ExpirationInDays",) . toJSON) _aCMPCACertificateAuthorityCrlConfigurationExpirationInDays
    , fmap (("S3BucketName",) . toJSON) _aCMPCACertificateAuthorityCrlConfigurationS3BucketName
    ]

-- | Constructor for 'ACMPCACertificateAuthorityCrlConfiguration' containing
-- required fields as arguments.
acmpcaCertificateAuthorityCrlConfiguration
  :: ACMPCACertificateAuthorityCrlConfiguration
acmpcaCertificateAuthorityCrlConfiguration  =
  ACMPCACertificateAuthorityCrlConfiguration
  { _aCMPCACertificateAuthorityCrlConfigurationCustomCname = Nothing
  , _aCMPCACertificateAuthorityCrlConfigurationEnabled = Nothing
  , _aCMPCACertificateAuthorityCrlConfigurationExpirationInDays = Nothing
  , _aCMPCACertificateAuthorityCrlConfigurationS3BucketName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-crlconfiguration.html#cfn-acmpca-certificateauthority-crlconfiguration-customcname
acmpcacaccCustomCname :: Lens' ACMPCACertificateAuthorityCrlConfiguration (Maybe (Val Text))
acmpcacaccCustomCname = lens _aCMPCACertificateAuthorityCrlConfigurationCustomCname (\s a -> s { _aCMPCACertificateAuthorityCrlConfigurationCustomCname = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-crlconfiguration.html#cfn-acmpca-certificateauthority-crlconfiguration-enabled
acmpcacaccEnabled :: Lens' ACMPCACertificateAuthorityCrlConfiguration (Maybe (Val Bool))
acmpcacaccEnabled = lens _aCMPCACertificateAuthorityCrlConfigurationEnabled (\s a -> s { _aCMPCACertificateAuthorityCrlConfigurationEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-crlconfiguration.html#cfn-acmpca-certificateauthority-crlconfiguration-expirationindays
acmpcacaccExpirationInDays :: Lens' ACMPCACertificateAuthorityCrlConfiguration (Maybe (Val Integer))
acmpcacaccExpirationInDays = lens _aCMPCACertificateAuthorityCrlConfigurationExpirationInDays (\s a -> s { _aCMPCACertificateAuthorityCrlConfigurationExpirationInDays = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-crlconfiguration.html#cfn-acmpca-certificateauthority-crlconfiguration-s3bucketname
acmpcacaccS3BucketName :: Lens' ACMPCACertificateAuthorityCrlConfiguration (Maybe (Val Text))
acmpcacaccS3BucketName = lens _aCMPCACertificateAuthorityCrlConfigurationS3BucketName (\s a -> s { _aCMPCACertificateAuthorityCrlConfigurationS3BucketName = a })


-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-validity.html

module Stratosphere.ResourceProperties.ACMPCACertificateValidity where

import Stratosphere.ResourceImports


-- | Full data type definition for ACMPCACertificateValidity. See
-- 'acmpcaCertificateValidity' for a more convenient constructor.
data ACMPCACertificateValidity =
  ACMPCACertificateValidity
  { _aCMPCACertificateValidityType :: Val Text
  , _aCMPCACertificateValidityValue :: Val Integer
  } deriving (Show, Eq)

instance ToJSON ACMPCACertificateValidity where
  toJSON ACMPCACertificateValidity{..} =
    object $
    catMaybes
    [ (Just . ("Type",) . toJSON) _aCMPCACertificateValidityType
    , (Just . ("Value",) . toJSON) _aCMPCACertificateValidityValue
    ]

-- | Constructor for 'ACMPCACertificateValidity' containing required fields as
-- arguments.
acmpcaCertificateValidity
  :: Val Text -- ^ 'acmpcacvType'
  -> Val Integer -- ^ 'acmpcacvValue'
  -> ACMPCACertificateValidity
acmpcaCertificateValidity typearg valuearg =
  ACMPCACertificateValidity
  { _aCMPCACertificateValidityType = typearg
  , _aCMPCACertificateValidityValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-validity.html#cfn-acmpca-certificate-validity-type
acmpcacvType :: Lens' ACMPCACertificateValidity (Val Text)
acmpcacvType = lens _aCMPCACertificateValidityType (\s a -> s { _aCMPCACertificateValidityType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-validity.html#cfn-acmpca-certificate-validity-value
acmpcacvValue :: Lens' ACMPCACertificateValidity (Val Integer)
acmpcacvValue = lens _aCMPCACertificateValidityValue (\s a -> s { _aCMPCACertificateValidityValue = a })


-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-resultconfiguration.html

module Stratosphere.ResourceProperties.AthenaWorkGroupResultConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AthenaWorkGroupEncryptionConfiguration

-- | Full data type definition for AthenaWorkGroupResultConfiguration. See
-- 'athenaWorkGroupResultConfiguration' for a more convenient constructor.
data AthenaWorkGroupResultConfiguration =
  AthenaWorkGroupResultConfiguration
  { _athenaWorkGroupResultConfigurationEncryptionConfiguration :: Maybe AthenaWorkGroupEncryptionConfiguration
  , _athenaWorkGroupResultConfigurationOutputLocation :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AthenaWorkGroupResultConfiguration where
  toJSON AthenaWorkGroupResultConfiguration{..} =
    object $
    catMaybes
    [ fmap (("EncryptionConfiguration",) . toJSON) _athenaWorkGroupResultConfigurationEncryptionConfiguration
    , fmap (("OutputLocation",) . toJSON) _athenaWorkGroupResultConfigurationOutputLocation
    ]

-- | Constructor for 'AthenaWorkGroupResultConfiguration' containing required
-- fields as arguments.
athenaWorkGroupResultConfiguration
  :: AthenaWorkGroupResultConfiguration
athenaWorkGroupResultConfiguration  =
  AthenaWorkGroupResultConfiguration
  { _athenaWorkGroupResultConfigurationEncryptionConfiguration = Nothing
  , _athenaWorkGroupResultConfigurationOutputLocation = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-resultconfiguration.html#cfn-athena-workgroup-resultconfiguration-encryptionconfiguration
awgrcEncryptionConfiguration :: Lens' AthenaWorkGroupResultConfiguration (Maybe AthenaWorkGroupEncryptionConfiguration)
awgrcEncryptionConfiguration = lens _athenaWorkGroupResultConfigurationEncryptionConfiguration (\s a -> s { _athenaWorkGroupResultConfigurationEncryptionConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-resultconfiguration.html#cfn-athena-workgroup-resultconfiguration-outputlocation
awgrcOutputLocation :: Lens' AthenaWorkGroupResultConfiguration (Maybe (Val Text))
awgrcOutputLocation = lens _athenaWorkGroupResultConfigurationOutputLocation (\s a -> s { _athenaWorkGroupResultConfigurationOutputLocation = a })

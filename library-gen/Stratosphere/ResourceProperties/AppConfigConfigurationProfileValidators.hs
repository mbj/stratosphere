
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-configurationprofile-validators.html

module Stratosphere.ResourceProperties.AppConfigConfigurationProfileValidators where

import Stratosphere.ResourceImports


-- | Full data type definition for AppConfigConfigurationProfileValidators.
-- See 'appConfigConfigurationProfileValidators' for a more convenient
-- constructor.
data AppConfigConfigurationProfileValidators =
  AppConfigConfigurationProfileValidators
  { _appConfigConfigurationProfileValidatorsContent :: Maybe (Val Text)
  , _appConfigConfigurationProfileValidatorsType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppConfigConfigurationProfileValidators where
  toJSON AppConfigConfigurationProfileValidators{..} =
    object $
    catMaybes
    [ fmap (("Content",) . toJSON) _appConfigConfigurationProfileValidatorsContent
    , fmap (("Type",) . toJSON) _appConfigConfigurationProfileValidatorsType
    ]

-- | Constructor for 'AppConfigConfigurationProfileValidators' containing
-- required fields as arguments.
appConfigConfigurationProfileValidators
  :: AppConfigConfigurationProfileValidators
appConfigConfigurationProfileValidators  =
  AppConfigConfigurationProfileValidators
  { _appConfigConfigurationProfileValidatorsContent = Nothing
  , _appConfigConfigurationProfileValidatorsType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-configurationprofile-validators.html#cfn-appconfig-configurationprofile-validators-content
accpvContent :: Lens' AppConfigConfigurationProfileValidators (Maybe (Val Text))
accpvContent = lens _appConfigConfigurationProfileValidatorsContent (\s a -> s { _appConfigConfigurationProfileValidatorsContent = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-configurationprofile-validators.html#cfn-appconfig-configurationprofile-validators-type
accpvType :: Lens' AppConfigConfigurationProfileValidators (Maybe (Val Text))
accpvType = lens _appConfigConfigurationProfileValidatorsType (\s a -> s { _appConfigConfigurationProfileValidatorsType = a })

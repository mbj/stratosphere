{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-resultconfigurationupdates.html

module Stratosphere.ResourceProperties.AthenaWorkGroupResultConfigurationUpdates where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AthenaWorkGroupEncryptionConfiguration

-- | Full data type definition for AthenaWorkGroupResultConfigurationUpdates.
-- See 'athenaWorkGroupResultConfigurationUpdates' for a more convenient
-- constructor.
data AthenaWorkGroupResultConfigurationUpdates =
  AthenaWorkGroupResultConfigurationUpdates
  { _athenaWorkGroupResultConfigurationUpdatesEncryptionConfiguration :: Maybe AthenaWorkGroupEncryptionConfiguration
  , _athenaWorkGroupResultConfigurationUpdatesOutputLocation :: Maybe (Val Text)
  , _athenaWorkGroupResultConfigurationUpdatesRemoveEncryptionConfiguration :: Maybe (Val Bool)
  , _athenaWorkGroupResultConfigurationUpdatesRemoveOutputLocation :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON AthenaWorkGroupResultConfigurationUpdates where
  toJSON AthenaWorkGroupResultConfigurationUpdates{..} =
    object $
    catMaybes
    [ fmap (("EncryptionConfiguration",) . toJSON) _athenaWorkGroupResultConfigurationUpdatesEncryptionConfiguration
    , fmap (("OutputLocation",) . toJSON) _athenaWorkGroupResultConfigurationUpdatesOutputLocation
    , fmap (("RemoveEncryptionConfiguration",) . toJSON) _athenaWorkGroupResultConfigurationUpdatesRemoveEncryptionConfiguration
    , fmap (("RemoveOutputLocation",) . toJSON) _athenaWorkGroupResultConfigurationUpdatesRemoveOutputLocation
    ]

-- | Constructor for 'AthenaWorkGroupResultConfigurationUpdates' containing
-- required fields as arguments.
athenaWorkGroupResultConfigurationUpdates
  :: AthenaWorkGroupResultConfigurationUpdates
athenaWorkGroupResultConfigurationUpdates  =
  AthenaWorkGroupResultConfigurationUpdates
  { _athenaWorkGroupResultConfigurationUpdatesEncryptionConfiguration = Nothing
  , _athenaWorkGroupResultConfigurationUpdatesOutputLocation = Nothing
  , _athenaWorkGroupResultConfigurationUpdatesRemoveEncryptionConfiguration = Nothing
  , _athenaWorkGroupResultConfigurationUpdatesRemoveOutputLocation = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-resultconfigurationupdates.html#cfn-athena-workgroup-resultconfigurationupdates-encryptionconfiguration
awgrcuEncryptionConfiguration :: Lens' AthenaWorkGroupResultConfigurationUpdates (Maybe AthenaWorkGroupEncryptionConfiguration)
awgrcuEncryptionConfiguration = lens _athenaWorkGroupResultConfigurationUpdatesEncryptionConfiguration (\s a -> s { _athenaWorkGroupResultConfigurationUpdatesEncryptionConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-resultconfigurationupdates.html#cfn-athena-workgroup-resultconfigurationupdates-outputlocation
awgrcuOutputLocation :: Lens' AthenaWorkGroupResultConfigurationUpdates (Maybe (Val Text))
awgrcuOutputLocation = lens _athenaWorkGroupResultConfigurationUpdatesOutputLocation (\s a -> s { _athenaWorkGroupResultConfigurationUpdatesOutputLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-resultconfigurationupdates.html#cfn-athena-workgroup-resultconfigurationupdates-removeencryptionconfiguration
awgrcuRemoveEncryptionConfiguration :: Lens' AthenaWorkGroupResultConfigurationUpdates (Maybe (Val Bool))
awgrcuRemoveEncryptionConfiguration = lens _athenaWorkGroupResultConfigurationUpdatesRemoveEncryptionConfiguration (\s a -> s { _athenaWorkGroupResultConfigurationUpdatesRemoveEncryptionConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-resultconfigurationupdates.html#cfn-athena-workgroup-resultconfigurationupdates-removeoutputlocation
awgrcuRemoveOutputLocation :: Lens' AthenaWorkGroupResultConfigurationUpdates (Maybe (Val Bool))
awgrcuRemoveOutputLocation = lens _athenaWorkGroupResultConfigurationUpdatesRemoveOutputLocation (\s a -> s { _athenaWorkGroupResultConfigurationUpdatesRemoveOutputLocation = a })

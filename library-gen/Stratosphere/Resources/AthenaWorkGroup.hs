{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-workgroup.html

module Stratosphere.Resources.AthenaWorkGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AthenaWorkGroupTags
import Stratosphere.ResourceProperties.AthenaWorkGroupWorkGroupConfiguration
import Stratosphere.ResourceProperties.AthenaWorkGroupWorkGroupConfigurationUpdates

-- | Full data type definition for AthenaWorkGroup. See 'athenaWorkGroup' for
-- a more convenient constructor.
data AthenaWorkGroup =
  AthenaWorkGroup
  { _athenaWorkGroupDescription :: Maybe (Val Text)
  , _athenaWorkGroupName :: Val Text
  , _athenaWorkGroupRecursiveDeleteOption :: Maybe (Val Bool)
  , _athenaWorkGroupState :: Maybe (Val Text)
  , _athenaWorkGroupTags :: Maybe AthenaWorkGroupTags
  , _athenaWorkGroupWorkGroupConfiguration :: Maybe AthenaWorkGroupWorkGroupConfiguration
  , _athenaWorkGroupWorkGroupConfigurationUpdates :: Maybe AthenaWorkGroupWorkGroupConfigurationUpdates
  } deriving (Show, Eq)

instance ToResourceProperties AthenaWorkGroup where
  toResourceProperties AthenaWorkGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Athena::WorkGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _athenaWorkGroupDescription
        , (Just . ("Name",) . toJSON) _athenaWorkGroupName
        , fmap (("RecursiveDeleteOption",) . toJSON) _athenaWorkGroupRecursiveDeleteOption
        , fmap (("State",) . toJSON) _athenaWorkGroupState
        , fmap (("Tags",) . toJSON) _athenaWorkGroupTags
        , fmap (("WorkGroupConfiguration",) . toJSON) _athenaWorkGroupWorkGroupConfiguration
        , fmap (("WorkGroupConfigurationUpdates",) . toJSON) _athenaWorkGroupWorkGroupConfigurationUpdates
        ]
    }

-- | Constructor for 'AthenaWorkGroup' containing required fields as
-- arguments.
athenaWorkGroup
  :: Val Text -- ^ 'awgName'
  -> AthenaWorkGroup
athenaWorkGroup namearg =
  AthenaWorkGroup
  { _athenaWorkGroupDescription = Nothing
  , _athenaWorkGroupName = namearg
  , _athenaWorkGroupRecursiveDeleteOption = Nothing
  , _athenaWorkGroupState = Nothing
  , _athenaWorkGroupTags = Nothing
  , _athenaWorkGroupWorkGroupConfiguration = Nothing
  , _athenaWorkGroupWorkGroupConfigurationUpdates = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-workgroup.html#cfn-athena-workgroup-description
awgDescription :: Lens' AthenaWorkGroup (Maybe (Val Text))
awgDescription = lens _athenaWorkGroupDescription (\s a -> s { _athenaWorkGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-workgroup.html#cfn-athena-workgroup-name
awgName :: Lens' AthenaWorkGroup (Val Text)
awgName = lens _athenaWorkGroupName (\s a -> s { _athenaWorkGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-workgroup.html#cfn-athena-workgroup-recursivedeleteoption
awgRecursiveDeleteOption :: Lens' AthenaWorkGroup (Maybe (Val Bool))
awgRecursiveDeleteOption = lens _athenaWorkGroupRecursiveDeleteOption (\s a -> s { _athenaWorkGroupRecursiveDeleteOption = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-workgroup.html#cfn-athena-workgroup-state
awgState :: Lens' AthenaWorkGroup (Maybe (Val Text))
awgState = lens _athenaWorkGroupState (\s a -> s { _athenaWorkGroupState = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-workgroup.html#cfn-athena-workgroup-tags
awgTags :: Lens' AthenaWorkGroup (Maybe AthenaWorkGroupTags)
awgTags = lens _athenaWorkGroupTags (\s a -> s { _athenaWorkGroupTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-workgroup.html#cfn-athena-workgroup-workgroupconfiguration
awgWorkGroupConfiguration :: Lens' AthenaWorkGroup (Maybe AthenaWorkGroupWorkGroupConfiguration)
awgWorkGroupConfiguration = lens _athenaWorkGroupWorkGroupConfiguration (\s a -> s { _athenaWorkGroupWorkGroupConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-workgroup.html#cfn-athena-workgroup-workgroupconfigurationupdates
awgWorkGroupConfigurationUpdates :: Lens' AthenaWorkGroup (Maybe AthenaWorkGroupWorkGroupConfigurationUpdates)
awgWorkGroupConfigurationUpdates = lens _athenaWorkGroupWorkGroupConfigurationUpdates (\s a -> s { _athenaWorkGroupWorkGroupConfigurationUpdates = a })

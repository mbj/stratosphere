{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloud9-environmentec2.html

module Stratosphere.Resources.Cloud9EnvironmentEC2 where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Cloud9EnvironmentEC2Repository

-- | Full data type definition for Cloud9EnvironmentEC2. See
-- 'cloud9EnvironmentEC2' for a more convenient constructor.
data Cloud9EnvironmentEC2 =
  Cloud9EnvironmentEC2
  { _cloud9EnvironmentEC2AutomaticStopTimeMinutes :: Maybe (Val Integer)
  , _cloud9EnvironmentEC2Description :: Maybe (Val Text)
  , _cloud9EnvironmentEC2InstanceType :: Val Text
  , _cloud9EnvironmentEC2Name :: Maybe (Val Text)
  , _cloud9EnvironmentEC2OwnerArn :: Maybe (Val Text)
  , _cloud9EnvironmentEC2Repositories :: Maybe [Cloud9EnvironmentEC2Repository]
  , _cloud9EnvironmentEC2SubnetId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties Cloud9EnvironmentEC2 where
  toResourceProperties Cloud9EnvironmentEC2{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Cloud9::EnvironmentEC2"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("AutomaticStopTimeMinutes",) . toJSON . fmap Integer') _cloud9EnvironmentEC2AutomaticStopTimeMinutes
        , fmap (("Description",) . toJSON) _cloud9EnvironmentEC2Description
        , (Just . ("InstanceType",) . toJSON) _cloud9EnvironmentEC2InstanceType
        , fmap (("Name",) . toJSON) _cloud9EnvironmentEC2Name
        , fmap (("OwnerArn",) . toJSON) _cloud9EnvironmentEC2OwnerArn
        , fmap (("Repositories",) . toJSON) _cloud9EnvironmentEC2Repositories
        , fmap (("SubnetId",) . toJSON) _cloud9EnvironmentEC2SubnetId
        ]
    }

-- | Constructor for 'Cloud9EnvironmentEC2' containing required fields as
-- arguments.
cloud9EnvironmentEC2
  :: Val Text -- ^ 'ceecInstanceType'
  -> Cloud9EnvironmentEC2
cloud9EnvironmentEC2 instanceTypearg =
  Cloud9EnvironmentEC2
  { _cloud9EnvironmentEC2AutomaticStopTimeMinutes = Nothing
  , _cloud9EnvironmentEC2Description = Nothing
  , _cloud9EnvironmentEC2InstanceType = instanceTypearg
  , _cloud9EnvironmentEC2Name = Nothing
  , _cloud9EnvironmentEC2OwnerArn = Nothing
  , _cloud9EnvironmentEC2Repositories = Nothing
  , _cloud9EnvironmentEC2SubnetId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloud9-environmentec2.html#cfn-cloud9-environmentec2-automaticstoptimeminutes
ceecAutomaticStopTimeMinutes :: Lens' Cloud9EnvironmentEC2 (Maybe (Val Integer))
ceecAutomaticStopTimeMinutes = lens _cloud9EnvironmentEC2AutomaticStopTimeMinutes (\s a -> s { _cloud9EnvironmentEC2AutomaticStopTimeMinutes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloud9-environmentec2.html#cfn-cloud9-environmentec2-description
ceecDescription :: Lens' Cloud9EnvironmentEC2 (Maybe (Val Text))
ceecDescription = lens _cloud9EnvironmentEC2Description (\s a -> s { _cloud9EnvironmentEC2Description = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloud9-environmentec2.html#cfn-cloud9-environmentec2-instancetype
ceecInstanceType :: Lens' Cloud9EnvironmentEC2 (Val Text)
ceecInstanceType = lens _cloud9EnvironmentEC2InstanceType (\s a -> s { _cloud9EnvironmentEC2InstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloud9-environmentec2.html#cfn-cloud9-environmentec2-name
ceecName :: Lens' Cloud9EnvironmentEC2 (Maybe (Val Text))
ceecName = lens _cloud9EnvironmentEC2Name (\s a -> s { _cloud9EnvironmentEC2Name = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloud9-environmentec2.html#cfn-cloud9-environmentec2-ownerarn
ceecOwnerArn :: Lens' Cloud9EnvironmentEC2 (Maybe (Val Text))
ceecOwnerArn = lens _cloud9EnvironmentEC2OwnerArn (\s a -> s { _cloud9EnvironmentEC2OwnerArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloud9-environmentec2.html#cfn-cloud9-environmentec2-repositories
ceecRepositories :: Lens' Cloud9EnvironmentEC2 (Maybe [Cloud9EnvironmentEC2Repository])
ceecRepositories = lens _cloud9EnvironmentEC2Repositories (\s a -> s { _cloud9EnvironmentEC2Repositories = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloud9-environmentec2.html#cfn-cloud9-environmentec2-subnetid
ceecSubnetId :: Lens' Cloud9EnvironmentEC2 (Maybe (Val Text))
ceecSubnetId = lens _cloud9EnvironmentEC2SubnetId (\s a -> s { _cloud9EnvironmentEC2SubnetId = a })


-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-tagspecification.html

module Stratosphere.ResourceProperties.EC2LaunchTemplateTagSpecification where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2LaunchTemplateTagSpecification. See
-- 'ec2LaunchTemplateTagSpecification' for a more convenient constructor.
data EC2LaunchTemplateTagSpecification =
  EC2LaunchTemplateTagSpecification
  { _eC2LaunchTemplateTagSpecificationResourceType :: Maybe (Val Text)
  , _eC2LaunchTemplateTagSpecificationTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON EC2LaunchTemplateTagSpecification where
  toJSON EC2LaunchTemplateTagSpecification{..} =
    object $
    catMaybes
    [ fmap (("ResourceType",) . toJSON) _eC2LaunchTemplateTagSpecificationResourceType
    , fmap (("Tags",) . toJSON) _eC2LaunchTemplateTagSpecificationTags
    ]

-- | Constructor for 'EC2LaunchTemplateTagSpecification' containing required
-- fields as arguments.
ec2LaunchTemplateTagSpecification
  :: EC2LaunchTemplateTagSpecification
ec2LaunchTemplateTagSpecification  =
  EC2LaunchTemplateTagSpecification
  { _eC2LaunchTemplateTagSpecificationResourceType = Nothing
  , _eC2LaunchTemplateTagSpecificationTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-tagspecification.html#cfn-ec2-launchtemplate-tagspecification-resourcetype
eclttsResourceType :: Lens' EC2LaunchTemplateTagSpecification (Maybe (Val Text))
eclttsResourceType = lens _eC2LaunchTemplateTagSpecificationResourceType (\s a -> s { _eC2LaunchTemplateTagSpecificationResourceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-tagspecification.html#cfn-ec2-launchtemplate-tagspecification-tags
eclttsTags :: Lens' EC2LaunchTemplateTagSpecification (Maybe [Tag])
eclttsTags = lens _eC2LaunchTemplateTagSpecificationTags (\s a -> s { _eC2LaunchTemplateTagSpecificationTags = a })

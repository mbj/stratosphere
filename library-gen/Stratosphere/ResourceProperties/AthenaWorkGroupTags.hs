
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-tags.html

module Stratosphere.ResourceProperties.AthenaWorkGroupTags where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for AthenaWorkGroupTags. See
-- 'athenaWorkGroupTags' for a more convenient constructor.
data AthenaWorkGroupTags =
  AthenaWorkGroupTags
  { _athenaWorkGroupTagsTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON AthenaWorkGroupTags where
  toJSON AthenaWorkGroupTags{..} =
    object $
    catMaybes
    [ fmap (("Tags",) . toJSON) _athenaWorkGroupTagsTags
    ]

-- | Constructor for 'AthenaWorkGroupTags' containing required fields as
-- arguments.
athenaWorkGroupTags
  :: AthenaWorkGroupTags
athenaWorkGroupTags  =
  AthenaWorkGroupTags
  { _athenaWorkGroupTagsTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-tags.html#cfn-athena-workgroup-tags-tags
awgtTags :: Lens' AthenaWorkGroupTags (Maybe [Tag])
awgtTags = lens _athenaWorkGroupTagsTags (\s a -> s { _athenaWorkGroupTagsTags = a })

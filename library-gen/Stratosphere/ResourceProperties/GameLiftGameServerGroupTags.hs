
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-tags.html

module Stratosphere.ResourceProperties.GameLiftGameServerGroupTags where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for GameLiftGameServerGroupTags. See
-- 'gameLiftGameServerGroupTags' for a more convenient constructor.
data GameLiftGameServerGroupTags =
  GameLiftGameServerGroupTags
  { _gameLiftGameServerGroupTagsTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON GameLiftGameServerGroupTags where
  toJSON GameLiftGameServerGroupTags{..} =
    object $
    catMaybes
    [ fmap (("Tags",) . toJSON) _gameLiftGameServerGroupTagsTags
    ]

-- | Constructor for 'GameLiftGameServerGroupTags' containing required fields
-- as arguments.
gameLiftGameServerGroupTags
  :: GameLiftGameServerGroupTags
gameLiftGameServerGroupTags  =
  GameLiftGameServerGroupTags
  { _gameLiftGameServerGroupTagsTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-tags.html#cfn-gamelift-gameservergroup-tags-tags
glgsgtTags :: Lens' GameLiftGameServerGroupTags (Maybe [Tag])
glgsgtTags = lens _gameLiftGameServerGroupTagsTags (\s a -> s { _gameLiftGameServerGroupTagsTags = a })

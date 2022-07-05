{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingruleset.html

module Stratosphere.Resources.GameLiftMatchmakingRuleSet where

import Stratosphere.ResourceImports


-- | Full data type definition for GameLiftMatchmakingRuleSet. See
-- 'gameLiftMatchmakingRuleSet' for a more convenient constructor.
data GameLiftMatchmakingRuleSet =
  GameLiftMatchmakingRuleSet
  { _gameLiftMatchmakingRuleSetName :: Val Text
  , _gameLiftMatchmakingRuleSetRuleSetBody :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties GameLiftMatchmakingRuleSet where
  toResourceProperties GameLiftMatchmakingRuleSet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::GameLift::MatchmakingRuleSet"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Name",) . toJSON) _gameLiftMatchmakingRuleSetName
        , (Just . ("RuleSetBody",) . toJSON) _gameLiftMatchmakingRuleSetRuleSetBody
        ]
    }

-- | Constructor for 'GameLiftMatchmakingRuleSet' containing required fields
-- as arguments.
gameLiftMatchmakingRuleSet
  :: Val Text -- ^ 'glmrsName'
  -> Val Text -- ^ 'glmrsRuleSetBody'
  -> GameLiftMatchmakingRuleSet
gameLiftMatchmakingRuleSet namearg ruleSetBodyarg =
  GameLiftMatchmakingRuleSet
  { _gameLiftMatchmakingRuleSetName = namearg
  , _gameLiftMatchmakingRuleSetRuleSetBody = ruleSetBodyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingruleset.html#cfn-gamelift-matchmakingruleset-name
glmrsName :: Lens' GameLiftMatchmakingRuleSet (Val Text)
glmrsName = lens _gameLiftMatchmakingRuleSetName (\s a -> s { _gameLiftMatchmakingRuleSetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingruleset.html#cfn-gamelift-matchmakingruleset-rulesetbody
glmrsRuleSetBody :: Lens' GameLiftMatchmakingRuleSet (Val Text)
glmrsRuleSetBody = lens _gameLiftMatchmakingRuleSetRuleSetBody (\s a -> s { _gameLiftMatchmakingRuleSetRuleSetBody = a })

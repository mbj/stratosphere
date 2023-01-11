
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-launchtemplate.html

module Stratosphere.ResourceProperties.GameLiftGameServerGroupLaunchTemplate where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for GameLiftGameServerGroupLaunchTemplate. See
-- 'gameLiftGameServerGroupLaunchTemplate' for a more convenient
-- constructor.
data GameLiftGameServerGroupLaunchTemplate =
  GameLiftGameServerGroupLaunchTemplate
  { _gameLiftGameServerGroupLaunchTemplateLaunchTemplateId :: Maybe (Val Text)
  , _gameLiftGameServerGroupLaunchTemplateLaunchTemplateName :: Maybe (Val Text)
  , _gameLiftGameServerGroupLaunchTemplateVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GameLiftGameServerGroupLaunchTemplate where
  toJSON GameLiftGameServerGroupLaunchTemplate{..} =
    object $
    catMaybes
    [ fmap (("LaunchTemplateId",) . toJSON) _gameLiftGameServerGroupLaunchTemplateLaunchTemplateId
    , fmap (("LaunchTemplateName",) . toJSON) _gameLiftGameServerGroupLaunchTemplateLaunchTemplateName
    , fmap (("Version",) . toJSON) _gameLiftGameServerGroupLaunchTemplateVersion
    ]

-- | Constructor for 'GameLiftGameServerGroupLaunchTemplate' containing
-- required fields as arguments.
gameLiftGameServerGroupLaunchTemplate
  :: GameLiftGameServerGroupLaunchTemplate
gameLiftGameServerGroupLaunchTemplate  =
  GameLiftGameServerGroupLaunchTemplate
  { _gameLiftGameServerGroupLaunchTemplateLaunchTemplateId = Nothing
  , _gameLiftGameServerGroupLaunchTemplateLaunchTemplateName = Nothing
  , _gameLiftGameServerGroupLaunchTemplateVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-launchtemplate.html#cfn-gamelift-gameservergroup-launchtemplate-launchtemplateid
glgsgltLaunchTemplateId :: Lens' GameLiftGameServerGroupLaunchTemplate (Maybe (Val Text))
glgsgltLaunchTemplateId = lens _gameLiftGameServerGroupLaunchTemplateLaunchTemplateId (\s a -> s { _gameLiftGameServerGroupLaunchTemplateLaunchTemplateId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-launchtemplate.html#cfn-gamelift-gameservergroup-launchtemplate-launchtemplatename
glgsgltLaunchTemplateName :: Lens' GameLiftGameServerGroupLaunchTemplate (Maybe (Val Text))
glgsgltLaunchTemplateName = lens _gameLiftGameServerGroupLaunchTemplateLaunchTemplateName (\s a -> s { _gameLiftGameServerGroupLaunchTemplateLaunchTemplateName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-launchtemplate.html#cfn-gamelift-gameservergroup-launchtemplate-version
glgsgltVersion :: Lens' GameLiftGameServerGroupLaunchTemplate (Maybe (Val Text))
glgsgltVersion = lens _gameLiftGameServerGroupLaunchTemplateVersion (\s a -> s { _gameLiftGameServerGroupLaunchTemplateVersion = a })

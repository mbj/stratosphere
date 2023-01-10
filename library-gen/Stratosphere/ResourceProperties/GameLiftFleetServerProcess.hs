
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-serverprocess.html

module Stratosphere.ResourceProperties.GameLiftFleetServerProcess where

import Stratosphere.ResourceImports


-- | Full data type definition for GameLiftFleetServerProcess. See
-- 'gameLiftFleetServerProcess' for a more convenient constructor.
data GameLiftFleetServerProcess =
  GameLiftFleetServerProcess
  { _gameLiftFleetServerProcessConcurrentExecutions :: Val Integer
  , _gameLiftFleetServerProcessLaunchPath :: Val Text
  , _gameLiftFleetServerProcessParameters :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GameLiftFleetServerProcess where
  toJSON GameLiftFleetServerProcess{..} =
    object $
    catMaybes
    [ (Just . ("ConcurrentExecutions",) . toJSON) _gameLiftFleetServerProcessConcurrentExecutions
    , (Just . ("LaunchPath",) . toJSON) _gameLiftFleetServerProcessLaunchPath
    , fmap (("Parameters",) . toJSON) _gameLiftFleetServerProcessParameters
    ]

-- | Constructor for 'GameLiftFleetServerProcess' containing required fields
-- as arguments.
gameLiftFleetServerProcess
  :: Val Integer -- ^ 'glfspConcurrentExecutions'
  -> Val Text -- ^ 'glfspLaunchPath'
  -> GameLiftFleetServerProcess
gameLiftFleetServerProcess concurrentExecutionsarg launchPatharg =
  GameLiftFleetServerProcess
  { _gameLiftFleetServerProcessConcurrentExecutions = concurrentExecutionsarg
  , _gameLiftFleetServerProcessLaunchPath = launchPatharg
  , _gameLiftFleetServerProcessParameters = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-serverprocess.html#cfn-gamelift-fleet-serverprocess-concurrentexecutions
glfspConcurrentExecutions :: Lens' GameLiftFleetServerProcess (Val Integer)
glfspConcurrentExecutions = lens _gameLiftFleetServerProcessConcurrentExecutions (\s a -> s { _gameLiftFleetServerProcessConcurrentExecutions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-serverprocess.html#cfn-gamelift-fleet-serverprocess-launchpath
glfspLaunchPath :: Lens' GameLiftFleetServerProcess (Val Text)
glfspLaunchPath = lens _gameLiftFleetServerProcessLaunchPath (\s a -> s { _gameLiftFleetServerProcessLaunchPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-serverprocess.html#cfn-gamelift-fleet-serverprocess-parameters
glfspParameters :: Lens' GameLiftFleetServerProcess (Maybe (Val Text))
glfspParameters = lens _gameLiftFleetServerProcessParameters (\s a -> s { _gameLiftFleetServerProcessParameters = a })

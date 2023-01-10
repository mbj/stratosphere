
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-certificateconfiguration.html

module Stratosphere.ResourceProperties.GameLiftFleetCertificateConfiguration where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for GameLiftFleetCertificateConfiguration. See
-- 'gameLiftFleetCertificateConfiguration' for a more convenient
-- constructor.
data GameLiftFleetCertificateConfiguration =
  GameLiftFleetCertificateConfiguration
  { _gameLiftFleetCertificateConfigurationCertificateType :: Val Text
  } deriving (Show, Eq)

instance ToJSON GameLiftFleetCertificateConfiguration where
  toJSON GameLiftFleetCertificateConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("CertificateType",) . toJSON) _gameLiftFleetCertificateConfigurationCertificateType
    ]

-- | Constructor for 'GameLiftFleetCertificateConfiguration' containing
-- required fields as arguments.
gameLiftFleetCertificateConfiguration
  :: Val Text -- ^ 'glfccCertificateType'
  -> GameLiftFleetCertificateConfiguration
gameLiftFleetCertificateConfiguration certificateTypearg =
  GameLiftFleetCertificateConfiguration
  { _gameLiftFleetCertificateConfigurationCertificateType = certificateTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-certificateconfiguration.html#cfn-gamelift-fleet-certificateconfiguration-certificatetype
glfccCertificateType :: Lens' GameLiftFleetCertificateConfiguration (Val Text)
glfccCertificateType = lens _gameLiftFleetCertificateConfigurationCertificateType (\s a -> s { _gameLiftFleetCertificateConfigurationCertificateType = a })

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deploymentstyle.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupDeploymentStyle where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CodeDeployDeploymentGroupDeploymentStyle.
-- See 'codeDeployDeploymentGroupDeploymentStyle' for a more convenient
-- constructor.
data CodeDeployDeploymentGroupDeploymentStyle =
  CodeDeployDeploymentGroupDeploymentStyle
  { _codeDeployDeploymentGroupDeploymentStyleDeploymentOption :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CodeDeployDeploymentGroupDeploymentStyle where
  toJSON CodeDeployDeploymentGroupDeploymentStyle{..} =
    object $
    catMaybes
    [ fmap (("DeploymentOption",) . toJSON) _codeDeployDeploymentGroupDeploymentStyleDeploymentOption
    ]

instance FromJSON CodeDeployDeploymentGroupDeploymentStyle where
  parseJSON (Object obj) =
    CodeDeployDeploymentGroupDeploymentStyle <$>
      (obj .:? "DeploymentOption")
  parseJSON _ = mempty

-- | Constructor for 'CodeDeployDeploymentGroupDeploymentStyle' containing
-- required fields as arguments.
codeDeployDeploymentGroupDeploymentStyle
  :: CodeDeployDeploymentGroupDeploymentStyle
codeDeployDeploymentGroupDeploymentStyle  =
  CodeDeployDeploymentGroupDeploymentStyle
  { _codeDeployDeploymentGroupDeploymentStyleDeploymentOption = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deploymentstyle.html#cfn-codedeploy-deploymentgroup-deploymentstyle-deploymentoption
cddgdsDeploymentOption :: Lens' CodeDeployDeploymentGroupDeploymentStyle (Maybe (Val Text))
cddgdsDeploymentOption = lens _codeDeployDeploymentGroupDeploymentStyleDeploymentOption (\s a -> s { _codeDeployDeploymentGroupDeploymentStyleDeploymentOption = a })

{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-application.html

module Stratosphere.Resources.CodeDeployApplication where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for CodeDeployApplication. See
-- | 'codeDeployApplication' for a more convenient constructor.
data CodeDeployApplication =
  CodeDeployApplication
  { _codeDeployApplicationApplicationName :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON CodeDeployApplication where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

instance FromJSON CodeDeployApplication where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

-- | Constructor for 'CodeDeployApplication' containing required fields as
-- | arguments.
codeDeployApplication
  :: CodeDeployApplication
codeDeployApplication  =
  CodeDeployApplication
  { _codeDeployApplicationApplicationName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-application.html#cfn-codedeploy-application-applicationname
cdaApplicationName :: Lens' CodeDeployApplication (Maybe (Val Text))
cdaApplicationName = lens _codeDeployApplicationApplicationName (\s a -> s { _codeDeployApplicationApplicationName = a })

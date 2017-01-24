{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-application.html

module Stratosphere.Resources.CodeDeployApplication where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CodeDeployApplication. See
-- | 'codeDeployApplication' for a more convenient constructor.
data CodeDeployApplication =
  CodeDeployApplication
  { _codeDeployApplicationApplicationName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CodeDeployApplication where
  toJSON CodeDeployApplication{..} =
    object
    [ "ApplicationName" .= _codeDeployApplicationApplicationName
    ]

instance FromJSON CodeDeployApplication where
  parseJSON (Object obj) =
    CodeDeployApplication <$>
      obj .: "ApplicationName"
  parseJSON _ = mempty

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

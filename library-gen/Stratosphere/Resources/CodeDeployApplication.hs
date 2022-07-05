{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-application.html

module Stratosphere.Resources.CodeDeployApplication where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeDeployApplication. See
-- 'codeDeployApplication' for a more convenient constructor.
data CodeDeployApplication =
  CodeDeployApplication
  { _codeDeployApplicationApplicationName :: Maybe (Val Text)
  , _codeDeployApplicationComputePlatform :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties CodeDeployApplication where
  toResourceProperties CodeDeployApplication{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CodeDeploy::Application"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ApplicationName",) . toJSON) _codeDeployApplicationApplicationName
        , fmap (("ComputePlatform",) . toJSON) _codeDeployApplicationComputePlatform
        ]
    }

-- | Constructor for 'CodeDeployApplication' containing required fields as
-- arguments.
codeDeployApplication
  :: CodeDeployApplication
codeDeployApplication  =
  CodeDeployApplication
  { _codeDeployApplicationApplicationName = Nothing
  , _codeDeployApplicationComputePlatform = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-application.html#cfn-codedeploy-application-applicationname
cdaApplicationName :: Lens' CodeDeployApplication (Maybe (Val Text))
cdaApplicationName = lens _codeDeployApplicationApplicationName (\s a -> s { _codeDeployApplicationApplicationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-application.html#cfn-codedeploy-application-computeplatform
cdaComputePlatform :: Lens' CodeDeployApplication (Maybe (Val Text))
cdaComputePlatform = lens _codeDeployApplicationComputePlatform (\s a -> s { _codeDeployApplicationComputePlatform = a })

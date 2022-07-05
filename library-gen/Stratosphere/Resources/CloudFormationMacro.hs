{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-macro.html

module Stratosphere.Resources.CloudFormationMacro where

import Stratosphere.ResourceImports


-- | Full data type definition for CloudFormationMacro. See
-- 'cloudFormationMacro' for a more convenient constructor.
data CloudFormationMacro =
  CloudFormationMacro
  { _cloudFormationMacroDescription :: Maybe (Val Text)
  , _cloudFormationMacroFunctionName :: Val Text
  , _cloudFormationMacroLogGroupName :: Maybe (Val Text)
  , _cloudFormationMacroLogRoleARN :: Maybe (Val Text)
  , _cloudFormationMacroName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties CloudFormationMacro where
  toResourceProperties CloudFormationMacro{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CloudFormation::Macro"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _cloudFormationMacroDescription
        , (Just . ("FunctionName",) . toJSON) _cloudFormationMacroFunctionName
        , fmap (("LogGroupName",) . toJSON) _cloudFormationMacroLogGroupName
        , fmap (("LogRoleARN",) . toJSON) _cloudFormationMacroLogRoleARN
        , (Just . ("Name",) . toJSON) _cloudFormationMacroName
        ]
    }

-- | Constructor for 'CloudFormationMacro' containing required fields as
-- arguments.
cloudFormationMacro
  :: Val Text -- ^ 'cfmFunctionName'
  -> Val Text -- ^ 'cfmName'
  -> CloudFormationMacro
cloudFormationMacro functionNamearg namearg =
  CloudFormationMacro
  { _cloudFormationMacroDescription = Nothing
  , _cloudFormationMacroFunctionName = functionNamearg
  , _cloudFormationMacroLogGroupName = Nothing
  , _cloudFormationMacroLogRoleARN = Nothing
  , _cloudFormationMacroName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-macro.html#cfn-cloudformation-macro-description
cfmDescription :: Lens' CloudFormationMacro (Maybe (Val Text))
cfmDescription = lens _cloudFormationMacroDescription (\s a -> s { _cloudFormationMacroDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-macro.html#cfn-cloudformation-macro-functionname
cfmFunctionName :: Lens' CloudFormationMacro (Val Text)
cfmFunctionName = lens _cloudFormationMacroFunctionName (\s a -> s { _cloudFormationMacroFunctionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-macro.html#cfn-cloudformation-macro-loggroupname
cfmLogGroupName :: Lens' CloudFormationMacro (Maybe (Val Text))
cfmLogGroupName = lens _cloudFormationMacroLogGroupName (\s a -> s { _cloudFormationMacroLogGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-macro.html#cfn-cloudformation-macro-logrolearn
cfmLogRoleARN :: Lens' CloudFormationMacro (Maybe (Val Text))
cfmLogRoleARN = lens _cloudFormationMacroLogRoleARN (\s a -> s { _cloudFormationMacroLogRoleARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-macro.html#cfn-cloudformation-macro-name
cfmName :: Lens' CloudFormationMacro (Val Text)
cfmName = lens _cloudFormationMacroName (\s a -> s { _cloudFormationMacroName = a })

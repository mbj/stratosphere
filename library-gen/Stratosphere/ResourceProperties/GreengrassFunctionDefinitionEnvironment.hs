{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-environment.html

module Stratosphere.ResourceProperties.GreengrassFunctionDefinitionEnvironment where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassFunctionDefinitionExecution
import Stratosphere.ResourceProperties.GreengrassFunctionDefinitionResourceAccessPolicy

-- | Full data type definition for GreengrassFunctionDefinitionEnvironment.
-- See 'greengrassFunctionDefinitionEnvironment' for a more convenient
-- constructor.
data GreengrassFunctionDefinitionEnvironment =
  GreengrassFunctionDefinitionEnvironment
  { _greengrassFunctionDefinitionEnvironmentAccessSysfs :: Maybe (Val Bool)
  , _greengrassFunctionDefinitionEnvironmentExecution :: Maybe GreengrassFunctionDefinitionExecution
  , _greengrassFunctionDefinitionEnvironmentResourceAccessPolicies :: Maybe [GreengrassFunctionDefinitionResourceAccessPolicy]
  , _greengrassFunctionDefinitionEnvironmentVariables :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON GreengrassFunctionDefinitionEnvironment where
  toJSON GreengrassFunctionDefinitionEnvironment{..} =
    object $
    catMaybes
    [ fmap (("AccessSysfs",) . toJSON) _greengrassFunctionDefinitionEnvironmentAccessSysfs
    , fmap (("Execution",) . toJSON) _greengrassFunctionDefinitionEnvironmentExecution
    , fmap (("ResourceAccessPolicies",) . toJSON) _greengrassFunctionDefinitionEnvironmentResourceAccessPolicies
    , fmap (("Variables",) . toJSON) _greengrassFunctionDefinitionEnvironmentVariables
    ]

-- | Constructor for 'GreengrassFunctionDefinitionEnvironment' containing
-- required fields as arguments.
greengrassFunctionDefinitionEnvironment
  :: GreengrassFunctionDefinitionEnvironment
greengrassFunctionDefinitionEnvironment  =
  GreengrassFunctionDefinitionEnvironment
  { _greengrassFunctionDefinitionEnvironmentAccessSysfs = Nothing
  , _greengrassFunctionDefinitionEnvironmentExecution = Nothing
  , _greengrassFunctionDefinitionEnvironmentResourceAccessPolicies = Nothing
  , _greengrassFunctionDefinitionEnvironmentVariables = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-environment.html#cfn-greengrass-functiondefinition-environment-accesssysfs
gfdeAccessSysfs :: Lens' GreengrassFunctionDefinitionEnvironment (Maybe (Val Bool))
gfdeAccessSysfs = lens _greengrassFunctionDefinitionEnvironmentAccessSysfs (\s a -> s { _greengrassFunctionDefinitionEnvironmentAccessSysfs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-environment.html#cfn-greengrass-functiondefinition-environment-execution
gfdeExecution :: Lens' GreengrassFunctionDefinitionEnvironment (Maybe GreengrassFunctionDefinitionExecution)
gfdeExecution = lens _greengrassFunctionDefinitionEnvironmentExecution (\s a -> s { _greengrassFunctionDefinitionEnvironmentExecution = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-environment.html#cfn-greengrass-functiondefinition-environment-resourceaccesspolicies
gfdeResourceAccessPolicies :: Lens' GreengrassFunctionDefinitionEnvironment (Maybe [GreengrassFunctionDefinitionResourceAccessPolicy])
gfdeResourceAccessPolicies = lens _greengrassFunctionDefinitionEnvironmentResourceAccessPolicies (\s a -> s { _greengrassFunctionDefinitionEnvironmentResourceAccessPolicies = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-environment.html#cfn-greengrass-functiondefinition-environment-variables
gfdeVariables :: Lens' GreengrassFunctionDefinitionEnvironment (Maybe Object)
gfdeVariables = lens _greengrassFunctionDefinitionEnvironmentVariables (\s a -> s { _greengrassFunctionDefinitionEnvironmentVariables = a })

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-environment.html

module Stratosphere.ResourceProperties.GreengrassFunctionDefinitionVersionEnvironment where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassFunctionDefinitionVersionExecution
import Stratosphere.ResourceProperties.GreengrassFunctionDefinitionVersionResourceAccessPolicy

-- | Full data type definition for
-- GreengrassFunctionDefinitionVersionEnvironment. See
-- 'greengrassFunctionDefinitionVersionEnvironment' for a more convenient
-- constructor.
data GreengrassFunctionDefinitionVersionEnvironment =
  GreengrassFunctionDefinitionVersionEnvironment
  { _greengrassFunctionDefinitionVersionEnvironmentAccessSysfs :: Maybe (Val Bool)
  , _greengrassFunctionDefinitionVersionEnvironmentExecution :: Maybe GreengrassFunctionDefinitionVersionExecution
  , _greengrassFunctionDefinitionVersionEnvironmentResourceAccessPolicies :: Maybe [GreengrassFunctionDefinitionVersionResourceAccessPolicy]
  , _greengrassFunctionDefinitionVersionEnvironmentVariables :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON GreengrassFunctionDefinitionVersionEnvironment where
  toJSON GreengrassFunctionDefinitionVersionEnvironment{..} =
    object $
    catMaybes
    [ fmap (("AccessSysfs",) . toJSON) _greengrassFunctionDefinitionVersionEnvironmentAccessSysfs
    , fmap (("Execution",) . toJSON) _greengrassFunctionDefinitionVersionEnvironmentExecution
    , fmap (("ResourceAccessPolicies",) . toJSON) _greengrassFunctionDefinitionVersionEnvironmentResourceAccessPolicies
    , fmap (("Variables",) . toJSON) _greengrassFunctionDefinitionVersionEnvironmentVariables
    ]

-- | Constructor for 'GreengrassFunctionDefinitionVersionEnvironment'
-- containing required fields as arguments.
greengrassFunctionDefinitionVersionEnvironment
  :: GreengrassFunctionDefinitionVersionEnvironment
greengrassFunctionDefinitionVersionEnvironment  =
  GreengrassFunctionDefinitionVersionEnvironment
  { _greengrassFunctionDefinitionVersionEnvironmentAccessSysfs = Nothing
  , _greengrassFunctionDefinitionVersionEnvironmentExecution = Nothing
  , _greengrassFunctionDefinitionVersionEnvironmentResourceAccessPolicies = Nothing
  , _greengrassFunctionDefinitionVersionEnvironmentVariables = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-environment.html#cfn-greengrass-functiondefinitionversion-environment-accesssysfs
gfdveAccessSysfs :: Lens' GreengrassFunctionDefinitionVersionEnvironment (Maybe (Val Bool))
gfdveAccessSysfs = lens _greengrassFunctionDefinitionVersionEnvironmentAccessSysfs (\s a -> s { _greengrassFunctionDefinitionVersionEnvironmentAccessSysfs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-environment.html#cfn-greengrass-functiondefinitionversion-environment-execution
gfdveExecution :: Lens' GreengrassFunctionDefinitionVersionEnvironment (Maybe GreengrassFunctionDefinitionVersionExecution)
gfdveExecution = lens _greengrassFunctionDefinitionVersionEnvironmentExecution (\s a -> s { _greengrassFunctionDefinitionVersionEnvironmentExecution = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-environment.html#cfn-greengrass-functiondefinitionversion-environment-resourceaccesspolicies
gfdveResourceAccessPolicies :: Lens' GreengrassFunctionDefinitionVersionEnvironment (Maybe [GreengrassFunctionDefinitionVersionResourceAccessPolicy])
gfdveResourceAccessPolicies = lens _greengrassFunctionDefinitionVersionEnvironmentResourceAccessPolicies (\s a -> s { _greengrassFunctionDefinitionVersionEnvironmentResourceAccessPolicies = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-environment.html#cfn-greengrass-functiondefinitionversion-environment-variables
gfdveVariables :: Lens' GreengrassFunctionDefinitionVersionEnvironment (Maybe Object)
gfdveVariables = lens _greengrassFunctionDefinitionVersionEnvironmentVariables (\s a -> s { _greengrassFunctionDefinitionVersionEnvironmentVariables = a })

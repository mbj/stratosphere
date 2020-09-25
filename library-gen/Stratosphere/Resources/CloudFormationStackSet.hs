{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html

module Stratosphere.Resources.CloudFormationStackSet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudFormationStackSetAutoDeployment
import Stratosphere.ResourceProperties.CloudFormationStackSetOperationPreferences
import Stratosphere.ResourceProperties.CloudFormationStackSetParameter
import Stratosphere.ResourceProperties.CloudFormationStackSetStackInstances
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for CloudFormationStackSet. See
-- 'cloudFormationStackSet' for a more convenient constructor.
data CloudFormationStackSet =
  CloudFormationStackSet
  { _cloudFormationStackSetAdministrationRoleARN :: Maybe (Val Text)
  , _cloudFormationStackSetAutoDeployment :: Maybe CloudFormationStackSetAutoDeployment
  , _cloudFormationStackSetCapabilities :: Maybe (ValList Text)
  , _cloudFormationStackSetDescription :: Maybe (Val Text)
  , _cloudFormationStackSetExecutionRoleName :: Maybe (Val Text)
  , _cloudFormationStackSetOperationPreferences :: Maybe CloudFormationStackSetOperationPreferences
  , _cloudFormationStackSetParameters :: Maybe [CloudFormationStackSetParameter]
  , _cloudFormationStackSetPermissionModel :: Maybe (Val Text)
  , _cloudFormationStackSetStackInstancesGroup :: Maybe [CloudFormationStackSetStackInstances]
  , _cloudFormationStackSetStackSetName :: Maybe (Val Text)
  , _cloudFormationStackSetTags :: Maybe [Tag]
  , _cloudFormationStackSetTemplateBody :: Maybe (Val Text)
  , _cloudFormationStackSetTemplateURL :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties CloudFormationStackSet where
  toResourceProperties CloudFormationStackSet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CloudFormation::StackSet"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("AdministrationRoleARN",) . toJSON) _cloudFormationStackSetAdministrationRoleARN
        , fmap (("AutoDeployment",) . toJSON) _cloudFormationStackSetAutoDeployment
        , fmap (("Capabilities",) . toJSON) _cloudFormationStackSetCapabilities
        , fmap (("Description",) . toJSON) _cloudFormationStackSetDescription
        , fmap (("ExecutionRoleName",) . toJSON) _cloudFormationStackSetExecutionRoleName
        , fmap (("OperationPreferences",) . toJSON) _cloudFormationStackSetOperationPreferences
        , fmap (("Parameters",) . toJSON) _cloudFormationStackSetParameters
        , fmap (("PermissionModel",) . toJSON) _cloudFormationStackSetPermissionModel
        , fmap (("StackInstancesGroup",) . toJSON) _cloudFormationStackSetStackInstancesGroup
        , fmap (("StackSetName",) . toJSON) _cloudFormationStackSetStackSetName
        , fmap (("Tags",) . toJSON) _cloudFormationStackSetTags
        , fmap (("TemplateBody",) . toJSON) _cloudFormationStackSetTemplateBody
        , fmap (("TemplateURL",) . toJSON) _cloudFormationStackSetTemplateURL
        ]
    }

-- | Constructor for 'CloudFormationStackSet' containing required fields as
-- arguments.
cloudFormationStackSet
  :: CloudFormationStackSet
cloudFormationStackSet  =
  CloudFormationStackSet
  { _cloudFormationStackSetAdministrationRoleARN = Nothing
  , _cloudFormationStackSetAutoDeployment = Nothing
  , _cloudFormationStackSetCapabilities = Nothing
  , _cloudFormationStackSetDescription = Nothing
  , _cloudFormationStackSetExecutionRoleName = Nothing
  , _cloudFormationStackSetOperationPreferences = Nothing
  , _cloudFormationStackSetParameters = Nothing
  , _cloudFormationStackSetPermissionModel = Nothing
  , _cloudFormationStackSetStackInstancesGroup = Nothing
  , _cloudFormationStackSetStackSetName = Nothing
  , _cloudFormationStackSetTags = Nothing
  , _cloudFormationStackSetTemplateBody = Nothing
  , _cloudFormationStackSetTemplateURL = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-administrationrolearn
cfssAdministrationRoleARN :: Lens' CloudFormationStackSet (Maybe (Val Text))
cfssAdministrationRoleARN = lens _cloudFormationStackSetAdministrationRoleARN (\s a -> s { _cloudFormationStackSetAdministrationRoleARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-autodeployment
cfssAutoDeployment :: Lens' CloudFormationStackSet (Maybe CloudFormationStackSetAutoDeployment)
cfssAutoDeployment = lens _cloudFormationStackSetAutoDeployment (\s a -> s { _cloudFormationStackSetAutoDeployment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-capabilities
cfssCapabilities :: Lens' CloudFormationStackSet (Maybe (ValList Text))
cfssCapabilities = lens _cloudFormationStackSetCapabilities (\s a -> s { _cloudFormationStackSetCapabilities = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-description
cfssDescription :: Lens' CloudFormationStackSet (Maybe (Val Text))
cfssDescription = lens _cloudFormationStackSetDescription (\s a -> s { _cloudFormationStackSetDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-executionrolename
cfssExecutionRoleName :: Lens' CloudFormationStackSet (Maybe (Val Text))
cfssExecutionRoleName = lens _cloudFormationStackSetExecutionRoleName (\s a -> s { _cloudFormationStackSetExecutionRoleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-operationpreferences
cfssOperationPreferences :: Lens' CloudFormationStackSet (Maybe CloudFormationStackSetOperationPreferences)
cfssOperationPreferences = lens _cloudFormationStackSetOperationPreferences (\s a -> s { _cloudFormationStackSetOperationPreferences = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-parameters
cfssParameters :: Lens' CloudFormationStackSet (Maybe [CloudFormationStackSetParameter])
cfssParameters = lens _cloudFormationStackSetParameters (\s a -> s { _cloudFormationStackSetParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-permissionmodel
cfssPermissionModel :: Lens' CloudFormationStackSet (Maybe (Val Text))
cfssPermissionModel = lens _cloudFormationStackSetPermissionModel (\s a -> s { _cloudFormationStackSetPermissionModel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-stackinstancesgroup
cfssStackInstancesGroup :: Lens' CloudFormationStackSet (Maybe [CloudFormationStackSetStackInstances])
cfssStackInstancesGroup = lens _cloudFormationStackSetStackInstancesGroup (\s a -> s { _cloudFormationStackSetStackInstancesGroup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-stacksetname
cfssStackSetName :: Lens' CloudFormationStackSet (Maybe (Val Text))
cfssStackSetName = lens _cloudFormationStackSetStackSetName (\s a -> s { _cloudFormationStackSetStackSetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-tags
cfssTags :: Lens' CloudFormationStackSet (Maybe [Tag])
cfssTags = lens _cloudFormationStackSetTags (\s a -> s { _cloudFormationStackSetTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-templatebody
cfssTemplateBody :: Lens' CloudFormationStackSet (Maybe (Val Text))
cfssTemplateBody = lens _cloudFormationStackSetTemplateBody (\s a -> s { _cloudFormationStackSetTemplateBody = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-templateurl
cfssTemplateURL :: Lens' CloudFormationStackSet (Maybe (Val Text))
cfssTemplateURL = lens _cloudFormationStackSetTemplateURL (\s a -> s { _cloudFormationStackSetTemplateURL = a })

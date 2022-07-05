{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html

module Stratosphere.Resources.SSMAssociation where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SSMAssociationInstanceAssociationOutputLocation
import Stratosphere.ResourceProperties.SSMAssociationParameterValues
import Stratosphere.ResourceProperties.SSMAssociationTarget

-- | Full data type definition for SSMAssociation. See 'ssmAssociation' for a
-- more convenient constructor.
data SSMAssociation =
  SSMAssociation
  { _sSMAssociationApplyOnlyAtCronInterval :: Maybe (Val Bool)
  , _sSMAssociationAssociationName :: Maybe (Val Text)
  , _sSMAssociationAutomationTargetParameterName :: Maybe (Val Text)
  , _sSMAssociationComplianceSeverity :: Maybe (Val Text)
  , _sSMAssociationDocumentVersion :: Maybe (Val Text)
  , _sSMAssociationInstanceId :: Maybe (Val Text)
  , _sSMAssociationMaxConcurrency :: Maybe (Val Text)
  , _sSMAssociationMaxErrors :: Maybe (Val Text)
  , _sSMAssociationName :: Val Text
  , _sSMAssociationOutputLocation :: Maybe SSMAssociationInstanceAssociationOutputLocation
  , _sSMAssociationParameters :: Maybe (Map Text SSMAssociationParameterValues)
  , _sSMAssociationScheduleExpression :: Maybe (Val Text)
  , _sSMAssociationSyncCompliance :: Maybe (Val Text)
  , _sSMAssociationTargets :: Maybe [SSMAssociationTarget]
  , _sSMAssociationWaitForSuccessTimeoutSeconds :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToResourceProperties SSMAssociation where
  toResourceProperties SSMAssociation{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SSM::Association"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ApplyOnlyAtCronInterval",) . toJSON) _sSMAssociationApplyOnlyAtCronInterval
        , fmap (("AssociationName",) . toJSON) _sSMAssociationAssociationName
        , fmap (("AutomationTargetParameterName",) . toJSON) _sSMAssociationAutomationTargetParameterName
        , fmap (("ComplianceSeverity",) . toJSON) _sSMAssociationComplianceSeverity
        , fmap (("DocumentVersion",) . toJSON) _sSMAssociationDocumentVersion
        , fmap (("InstanceId",) . toJSON) _sSMAssociationInstanceId
        , fmap (("MaxConcurrency",) . toJSON) _sSMAssociationMaxConcurrency
        , fmap (("MaxErrors",) . toJSON) _sSMAssociationMaxErrors
        , (Just . ("Name",) . toJSON) _sSMAssociationName
        , fmap (("OutputLocation",) . toJSON) _sSMAssociationOutputLocation
        , fmap (("Parameters",) . toJSON) _sSMAssociationParameters
        , fmap (("ScheduleExpression",) . toJSON) _sSMAssociationScheduleExpression
        , fmap (("SyncCompliance",) . toJSON) _sSMAssociationSyncCompliance
        , fmap (("Targets",) . toJSON) _sSMAssociationTargets
        , fmap (("WaitForSuccessTimeoutSeconds",) . toJSON) _sSMAssociationWaitForSuccessTimeoutSeconds
        ]
    }

-- | Constructor for 'SSMAssociation' containing required fields as arguments.
ssmAssociation
  :: Val Text -- ^ 'ssmaName'
  -> SSMAssociation
ssmAssociation namearg =
  SSMAssociation
  { _sSMAssociationApplyOnlyAtCronInterval = Nothing
  , _sSMAssociationAssociationName = Nothing
  , _sSMAssociationAutomationTargetParameterName = Nothing
  , _sSMAssociationComplianceSeverity = Nothing
  , _sSMAssociationDocumentVersion = Nothing
  , _sSMAssociationInstanceId = Nothing
  , _sSMAssociationMaxConcurrency = Nothing
  , _sSMAssociationMaxErrors = Nothing
  , _sSMAssociationName = namearg
  , _sSMAssociationOutputLocation = Nothing
  , _sSMAssociationParameters = Nothing
  , _sSMAssociationScheduleExpression = Nothing
  , _sSMAssociationSyncCompliance = Nothing
  , _sSMAssociationTargets = Nothing
  , _sSMAssociationWaitForSuccessTimeoutSeconds = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-applyonlyatcroninterval
ssmaApplyOnlyAtCronInterval :: Lens' SSMAssociation (Maybe (Val Bool))
ssmaApplyOnlyAtCronInterval = lens _sSMAssociationApplyOnlyAtCronInterval (\s a -> s { _sSMAssociationApplyOnlyAtCronInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-associationname
ssmaAssociationName :: Lens' SSMAssociation (Maybe (Val Text))
ssmaAssociationName = lens _sSMAssociationAssociationName (\s a -> s { _sSMAssociationAssociationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-automationtargetparametername
ssmaAutomationTargetParameterName :: Lens' SSMAssociation (Maybe (Val Text))
ssmaAutomationTargetParameterName = lens _sSMAssociationAutomationTargetParameterName (\s a -> s { _sSMAssociationAutomationTargetParameterName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-complianceseverity
ssmaComplianceSeverity :: Lens' SSMAssociation (Maybe (Val Text))
ssmaComplianceSeverity = lens _sSMAssociationComplianceSeverity (\s a -> s { _sSMAssociationComplianceSeverity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-documentversion
ssmaDocumentVersion :: Lens' SSMAssociation (Maybe (Val Text))
ssmaDocumentVersion = lens _sSMAssociationDocumentVersion (\s a -> s { _sSMAssociationDocumentVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-instanceid
ssmaInstanceId :: Lens' SSMAssociation (Maybe (Val Text))
ssmaInstanceId = lens _sSMAssociationInstanceId (\s a -> s { _sSMAssociationInstanceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-maxconcurrency
ssmaMaxConcurrency :: Lens' SSMAssociation (Maybe (Val Text))
ssmaMaxConcurrency = lens _sSMAssociationMaxConcurrency (\s a -> s { _sSMAssociationMaxConcurrency = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-maxerrors
ssmaMaxErrors :: Lens' SSMAssociation (Maybe (Val Text))
ssmaMaxErrors = lens _sSMAssociationMaxErrors (\s a -> s { _sSMAssociationMaxErrors = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-name
ssmaName :: Lens' SSMAssociation (Val Text)
ssmaName = lens _sSMAssociationName (\s a -> s { _sSMAssociationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-outputlocation
ssmaOutputLocation :: Lens' SSMAssociation (Maybe SSMAssociationInstanceAssociationOutputLocation)
ssmaOutputLocation = lens _sSMAssociationOutputLocation (\s a -> s { _sSMAssociationOutputLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-parameters
ssmaParameters :: Lens' SSMAssociation (Maybe (Map Text SSMAssociationParameterValues))
ssmaParameters = lens _sSMAssociationParameters (\s a -> s { _sSMAssociationParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-scheduleexpression
ssmaScheduleExpression :: Lens' SSMAssociation (Maybe (Val Text))
ssmaScheduleExpression = lens _sSMAssociationScheduleExpression (\s a -> s { _sSMAssociationScheduleExpression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-synccompliance
ssmaSyncCompliance :: Lens' SSMAssociation (Maybe (Val Text))
ssmaSyncCompliance = lens _sSMAssociationSyncCompliance (\s a -> s { _sSMAssociationSyncCompliance = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-targets
ssmaTargets :: Lens' SSMAssociation (Maybe [SSMAssociationTarget])
ssmaTargets = lens _sSMAssociationTargets (\s a -> s { _sSMAssociationTargets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-waitforsuccesstimeoutseconds
ssmaWaitForSuccessTimeoutSeconds :: Lens' SSMAssociation (Maybe (Val Integer))
ssmaWaitForSuccessTimeoutSeconds = lens _sSMAssociationWaitForSuccessTimeoutSeconds (\s a -> s { _sSMAssociationWaitForSuccessTimeoutSeconds = a })

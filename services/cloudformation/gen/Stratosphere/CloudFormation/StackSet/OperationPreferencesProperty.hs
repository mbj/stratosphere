module Stratosphere.CloudFormation.StackSet.OperationPreferencesProperty (
        OperationPreferencesProperty(..), mkOperationPreferencesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OperationPreferencesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-operationpreferences.html>
    OperationPreferencesProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-operationpreferences.html#cfn-cloudformation-stackset-operationpreferences-concurrencymode>
                                  concurrencyMode :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-operationpreferences.html#cfn-cloudformation-stackset-operationpreferences-failuretolerancecount>
                                  failureToleranceCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-operationpreferences.html#cfn-cloudformation-stackset-operationpreferences-failuretolerancepercentage>
                                  failureTolerancePercentage :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-operationpreferences.html#cfn-cloudformation-stackset-operationpreferences-maxconcurrentcount>
                                  maxConcurrentCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-operationpreferences.html#cfn-cloudformation-stackset-operationpreferences-maxconcurrentpercentage>
                                  maxConcurrentPercentage :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-operationpreferences.html#cfn-cloudformation-stackset-operationpreferences-regionconcurrencytype>
                                  regionConcurrencyType :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-operationpreferences.html#cfn-cloudformation-stackset-operationpreferences-regionorder>
                                  regionOrder :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOperationPreferencesProperty :: OperationPreferencesProperty
mkOperationPreferencesProperty
  = OperationPreferencesProperty
      {haddock_workaround_ = (), concurrencyMode = Prelude.Nothing,
       failureToleranceCount = Prelude.Nothing,
       failureTolerancePercentage = Prelude.Nothing,
       maxConcurrentCount = Prelude.Nothing,
       maxConcurrentPercentage = Prelude.Nothing,
       regionConcurrencyType = Prelude.Nothing,
       regionOrder = Prelude.Nothing}
instance ToResourceProperties OperationPreferencesProperty where
  toResourceProperties OperationPreferencesProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::StackSet.OperationPreferences",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConcurrencyMode" Prelude.<$> concurrencyMode,
                            (JSON..=) "FailureToleranceCount"
                              Prelude.<$> failureToleranceCount,
                            (JSON..=) "FailureTolerancePercentage"
                              Prelude.<$> failureTolerancePercentage,
                            (JSON..=) "MaxConcurrentCount" Prelude.<$> maxConcurrentCount,
                            (JSON..=) "MaxConcurrentPercentage"
                              Prelude.<$> maxConcurrentPercentage,
                            (JSON..=) "RegionConcurrencyType"
                              Prelude.<$> regionConcurrencyType,
                            (JSON..=) "RegionOrder" Prelude.<$> regionOrder])}
instance JSON.ToJSON OperationPreferencesProperty where
  toJSON OperationPreferencesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConcurrencyMode" Prelude.<$> concurrencyMode,
               (JSON..=) "FailureToleranceCount"
                 Prelude.<$> failureToleranceCount,
               (JSON..=) "FailureTolerancePercentage"
                 Prelude.<$> failureTolerancePercentage,
               (JSON..=) "MaxConcurrentCount" Prelude.<$> maxConcurrentCount,
               (JSON..=) "MaxConcurrentPercentage"
                 Prelude.<$> maxConcurrentPercentage,
               (JSON..=) "RegionConcurrencyType"
                 Prelude.<$> regionConcurrencyType,
               (JSON..=) "RegionOrder" Prelude.<$> regionOrder]))
instance Property "ConcurrencyMode" OperationPreferencesProperty where
  type PropertyType "ConcurrencyMode" OperationPreferencesProperty = Value Prelude.Text
  set newValue OperationPreferencesProperty {..}
    = OperationPreferencesProperty
        {concurrencyMode = Prelude.pure newValue, ..}
instance Property "FailureToleranceCount" OperationPreferencesProperty where
  type PropertyType "FailureToleranceCount" OperationPreferencesProperty = Value Prelude.Integer
  set newValue OperationPreferencesProperty {..}
    = OperationPreferencesProperty
        {failureToleranceCount = Prelude.pure newValue, ..}
instance Property "FailureTolerancePercentage" OperationPreferencesProperty where
  type PropertyType "FailureTolerancePercentage" OperationPreferencesProperty = Value Prelude.Integer
  set newValue OperationPreferencesProperty {..}
    = OperationPreferencesProperty
        {failureTolerancePercentage = Prelude.pure newValue, ..}
instance Property "MaxConcurrentCount" OperationPreferencesProperty where
  type PropertyType "MaxConcurrentCount" OperationPreferencesProperty = Value Prelude.Integer
  set newValue OperationPreferencesProperty {..}
    = OperationPreferencesProperty
        {maxConcurrentCount = Prelude.pure newValue, ..}
instance Property "MaxConcurrentPercentage" OperationPreferencesProperty where
  type PropertyType "MaxConcurrentPercentage" OperationPreferencesProperty = Value Prelude.Integer
  set newValue OperationPreferencesProperty {..}
    = OperationPreferencesProperty
        {maxConcurrentPercentage = Prelude.pure newValue, ..}
instance Property "RegionConcurrencyType" OperationPreferencesProperty where
  type PropertyType "RegionConcurrencyType" OperationPreferencesProperty = Value Prelude.Text
  set newValue OperationPreferencesProperty {..}
    = OperationPreferencesProperty
        {regionConcurrencyType = Prelude.pure newValue, ..}
instance Property "RegionOrder" OperationPreferencesProperty where
  type PropertyType "RegionOrder" OperationPreferencesProperty = ValueList Prelude.Text
  set newValue OperationPreferencesProperty {..}
    = OperationPreferencesProperty
        {regionOrder = Prelude.pure newValue, ..}
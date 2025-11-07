module Stratosphere.RedshiftServerless.Workgroup.PerformanceTargetProperty (
        PerformanceTargetProperty(..), mkPerformanceTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PerformanceTargetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-workgroup-performancetarget.html>
    PerformanceTargetProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-workgroup-performancetarget.html#cfn-redshiftserverless-workgroup-performancetarget-level>
                               level :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-workgroup-performancetarget.html#cfn-redshiftserverless-workgroup-performancetarget-status>
                               status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPerformanceTargetProperty :: PerformanceTargetProperty
mkPerformanceTargetProperty
  = PerformanceTargetProperty
      {haddock_workaround_ = (), level = Prelude.Nothing,
       status = Prelude.Nothing}
instance ToResourceProperties PerformanceTargetProperty where
  toResourceProperties PerformanceTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::RedshiftServerless::Workgroup.PerformanceTarget",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Level" Prelude.<$> level,
                            (JSON..=) "Status" Prelude.<$> status])}
instance JSON.ToJSON PerformanceTargetProperty where
  toJSON PerformanceTargetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Level" Prelude.<$> level,
               (JSON..=) "Status" Prelude.<$> status]))
instance Property "Level" PerformanceTargetProperty where
  type PropertyType "Level" PerformanceTargetProperty = Value Prelude.Integer
  set newValue PerformanceTargetProperty {..}
    = PerformanceTargetProperty {level = Prelude.pure newValue, ..}
instance Property "Status" PerformanceTargetProperty where
  type PropertyType "Status" PerformanceTargetProperty = Value Prelude.Text
  set newValue PerformanceTargetProperty {..}
    = PerformanceTargetProperty {status = Prelude.pure newValue, ..}
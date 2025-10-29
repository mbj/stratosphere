module Stratosphere.CloudFormation.WaitCondition (
        WaitCondition(..), mkWaitCondition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WaitCondition
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitcondition.html>
    WaitCondition {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitcondition.html#cfn-waitcondition-count>
                   count :: (Prelude.Maybe (Value Prelude.Integer)),
                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitcondition.html#cfn-waitcondition-handle>
                   handle :: (Prelude.Maybe (Value Prelude.Text)),
                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitcondition.html#cfn-waitcondition-timeout>
                   timeout :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWaitCondition :: WaitCondition
mkWaitCondition
  = WaitCondition
      {count = Prelude.Nothing, handle = Prelude.Nothing,
       timeout = Prelude.Nothing}
instance ToResourceProperties WaitCondition where
  toResourceProperties WaitCondition {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::WaitCondition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Count" Prelude.<$> count,
                            (JSON..=) "Handle" Prelude.<$> handle,
                            (JSON..=) "Timeout" Prelude.<$> timeout])}
instance JSON.ToJSON WaitCondition where
  toJSON WaitCondition {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Count" Prelude.<$> count,
               (JSON..=) "Handle" Prelude.<$> handle,
               (JSON..=) "Timeout" Prelude.<$> timeout]))
instance Property "Count" WaitCondition where
  type PropertyType "Count" WaitCondition = Value Prelude.Integer
  set newValue WaitCondition {..}
    = WaitCondition {count = Prelude.pure newValue, ..}
instance Property "Handle" WaitCondition where
  type PropertyType "Handle" WaitCondition = Value Prelude.Text
  set newValue WaitCondition {..}
    = WaitCondition {handle = Prelude.pure newValue, ..}
instance Property "Timeout" WaitCondition where
  type PropertyType "Timeout" WaitCondition = Value Prelude.Text
  set newValue WaitCondition {..}
    = WaitCondition {timeout = Prelude.pure newValue, ..}
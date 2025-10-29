module Stratosphere.IoTFleetWise.SignalCatalog.BranchProperty (
        BranchProperty(..), mkBranchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BranchProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-signalcatalog-branch.html>
    BranchProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-signalcatalog-branch.html#cfn-iotfleetwise-signalcatalog-branch-description>
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-signalcatalog-branch.html#cfn-iotfleetwise-signalcatalog-branch-fullyqualifiedname>
                    fullyQualifiedName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBranchProperty :: Value Prelude.Text -> BranchProperty
mkBranchProperty fullyQualifiedName
  = BranchProperty
      {fullyQualifiedName = fullyQualifiedName,
       description = Prelude.Nothing}
instance ToResourceProperties BranchProperty where
  toResourceProperties BranchProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::SignalCatalog.Branch",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FullyQualifiedName" JSON..= fullyQualifiedName]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON BranchProperty where
  toJSON BranchProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FullyQualifiedName" JSON..= fullyQualifiedName]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" BranchProperty where
  type PropertyType "Description" BranchProperty = Value Prelude.Text
  set newValue BranchProperty {..}
    = BranchProperty {description = Prelude.pure newValue, ..}
instance Property "FullyQualifiedName" BranchProperty where
  type PropertyType "FullyQualifiedName" BranchProperty = Value Prelude.Text
  set newValue BranchProperty {..}
    = BranchProperty {fullyQualifiedName = newValue, ..}
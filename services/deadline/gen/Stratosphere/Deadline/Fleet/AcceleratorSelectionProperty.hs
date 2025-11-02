module Stratosphere.Deadline.Fleet.AcceleratorSelectionProperty (
        AcceleratorSelectionProperty(..), mkAcceleratorSelectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AcceleratorSelectionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-acceleratorselection.html>
    AcceleratorSelectionProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-acceleratorselection.html#cfn-deadline-fleet-acceleratorselection-name>
                                  name :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-acceleratorselection.html#cfn-deadline-fleet-acceleratorselection-runtime>
                                  runtime :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAcceleratorSelectionProperty ::
  Value Prelude.Text -> AcceleratorSelectionProperty
mkAcceleratorSelectionProperty name
  = AcceleratorSelectionProperty
      {haddock_workaround_ = (), name = name, runtime = Prelude.Nothing}
instance ToResourceProperties AcceleratorSelectionProperty where
  toResourceProperties AcceleratorSelectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Fleet.AcceleratorSelection",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Runtime" Prelude.<$> runtime]))}
instance JSON.ToJSON AcceleratorSelectionProperty where
  toJSON AcceleratorSelectionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Runtime" Prelude.<$> runtime])))
instance Property "Name" AcceleratorSelectionProperty where
  type PropertyType "Name" AcceleratorSelectionProperty = Value Prelude.Text
  set newValue AcceleratorSelectionProperty {..}
    = AcceleratorSelectionProperty {name = newValue, ..}
instance Property "Runtime" AcceleratorSelectionProperty where
  type PropertyType "Runtime" AcceleratorSelectionProperty = Value Prelude.Text
  set newValue AcceleratorSelectionProperty {..}
    = AcceleratorSelectionProperty
        {runtime = Prelude.pure newValue, ..}
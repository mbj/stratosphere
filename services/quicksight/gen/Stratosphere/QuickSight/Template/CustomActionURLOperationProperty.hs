module Stratosphere.QuickSight.Template.CustomActionURLOperationProperty (
        CustomActionURLOperationProperty(..),
        mkCustomActionURLOperationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomActionURLOperationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-customactionurloperation.html>
    CustomActionURLOperationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-customactionurloperation.html#cfn-quicksight-template-customactionurloperation-urltarget>
                                      uRLTarget :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-customactionurloperation.html#cfn-quicksight-template-customactionurloperation-urltemplate>
                                      uRLTemplate :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomActionURLOperationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CustomActionURLOperationProperty
mkCustomActionURLOperationProperty uRLTarget uRLTemplate
  = CustomActionURLOperationProperty
      {haddock_workaround_ = (), uRLTarget = uRLTarget,
       uRLTemplate = uRLTemplate}
instance ToResourceProperties CustomActionURLOperationProperty where
  toResourceProperties CustomActionURLOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.CustomActionURLOperation",
         supportsTags = Prelude.False,
         properties = ["URLTarget" JSON..= uRLTarget,
                       "URLTemplate" JSON..= uRLTemplate]}
instance JSON.ToJSON CustomActionURLOperationProperty where
  toJSON CustomActionURLOperationProperty {..}
    = JSON.object
        ["URLTarget" JSON..= uRLTarget, "URLTemplate" JSON..= uRLTemplate]
instance Property "URLTarget" CustomActionURLOperationProperty where
  type PropertyType "URLTarget" CustomActionURLOperationProperty = Value Prelude.Text
  set newValue CustomActionURLOperationProperty {..}
    = CustomActionURLOperationProperty {uRLTarget = newValue, ..}
instance Property "URLTemplate" CustomActionURLOperationProperty where
  type PropertyType "URLTemplate" CustomActionURLOperationProperty = Value Prelude.Text
  set newValue CustomActionURLOperationProperty {..}
    = CustomActionURLOperationProperty {uRLTemplate = newValue, ..}
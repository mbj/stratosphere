module Stratosphere.QuickSight.Analysis.CustomActionURLOperationProperty (
        CustomActionURLOperationProperty(..),
        mkCustomActionURLOperationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomActionURLOperationProperty
  = CustomActionURLOperationProperty {uRLTarget :: (Value Prelude.Text),
                                      uRLTemplate :: (Value Prelude.Text)}
mkCustomActionURLOperationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CustomActionURLOperationProperty
mkCustomActionURLOperationProperty uRLTarget uRLTemplate
  = CustomActionURLOperationProperty
      {uRLTarget = uRLTarget, uRLTemplate = uRLTemplate}
instance ToResourceProperties CustomActionURLOperationProperty where
  toResourceProperties CustomActionURLOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.CustomActionURLOperation",
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
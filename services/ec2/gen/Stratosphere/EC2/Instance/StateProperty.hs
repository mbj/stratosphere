module Stratosphere.EC2.Instance.StateProperty (
        StateProperty(..), mkStateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StateProperty
  = StateProperty {code :: (Prelude.Maybe (Value Prelude.Text)),
                   name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStateProperty :: StateProperty
mkStateProperty
  = StateProperty {code = Prelude.Nothing, name = Prelude.Nothing}
instance ToResourceProperties StateProperty where
  toResourceProperties StateProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::Instance.State",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Code" Prelude.<$> code,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON StateProperty where
  toJSON StateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Code" Prelude.<$> code,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "Code" StateProperty where
  type PropertyType "Code" StateProperty = Value Prelude.Text
  set newValue StateProperty {..}
    = StateProperty {code = Prelude.pure newValue, ..}
instance Property "Name" StateProperty where
  type PropertyType "Name" StateProperty = Value Prelude.Text
  set newValue StateProperty {..}
    = StateProperty {name = Prelude.pure newValue, ..}
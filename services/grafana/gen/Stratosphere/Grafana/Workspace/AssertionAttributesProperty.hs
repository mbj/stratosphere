module Stratosphere.Grafana.Workspace.AssertionAttributesProperty (
        AssertionAttributesProperty(..), mkAssertionAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssertionAttributesProperty
  = AssertionAttributesProperty {email :: (Prelude.Maybe (Value Prelude.Text)),
                                 groups :: (Prelude.Maybe (Value Prelude.Text)),
                                 login :: (Prelude.Maybe (Value Prelude.Text)),
                                 name :: (Prelude.Maybe (Value Prelude.Text)),
                                 org :: (Prelude.Maybe (Value Prelude.Text)),
                                 role :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssertionAttributesProperty :: AssertionAttributesProperty
mkAssertionAttributesProperty
  = AssertionAttributesProperty
      {email = Prelude.Nothing, groups = Prelude.Nothing,
       login = Prelude.Nothing, name = Prelude.Nothing,
       org = Prelude.Nothing, role = Prelude.Nothing}
instance ToResourceProperties AssertionAttributesProperty where
  toResourceProperties AssertionAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Grafana::Workspace.AssertionAttributes",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Email" Prelude.<$> email,
                            (JSON..=) "Groups" Prelude.<$> groups,
                            (JSON..=) "Login" Prelude.<$> login,
                            (JSON..=) "Name" Prelude.<$> name, (JSON..=) "Org" Prelude.<$> org,
                            (JSON..=) "Role" Prelude.<$> role])}
instance JSON.ToJSON AssertionAttributesProperty where
  toJSON AssertionAttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Email" Prelude.<$> email,
               (JSON..=) "Groups" Prelude.<$> groups,
               (JSON..=) "Login" Prelude.<$> login,
               (JSON..=) "Name" Prelude.<$> name, (JSON..=) "Org" Prelude.<$> org,
               (JSON..=) "Role" Prelude.<$> role]))
instance Property "Email" AssertionAttributesProperty where
  type PropertyType "Email" AssertionAttributesProperty = Value Prelude.Text
  set newValue AssertionAttributesProperty {..}
    = AssertionAttributesProperty {email = Prelude.pure newValue, ..}
instance Property "Groups" AssertionAttributesProperty where
  type PropertyType "Groups" AssertionAttributesProperty = Value Prelude.Text
  set newValue AssertionAttributesProperty {..}
    = AssertionAttributesProperty {groups = Prelude.pure newValue, ..}
instance Property "Login" AssertionAttributesProperty where
  type PropertyType "Login" AssertionAttributesProperty = Value Prelude.Text
  set newValue AssertionAttributesProperty {..}
    = AssertionAttributesProperty {login = Prelude.pure newValue, ..}
instance Property "Name" AssertionAttributesProperty where
  type PropertyType "Name" AssertionAttributesProperty = Value Prelude.Text
  set newValue AssertionAttributesProperty {..}
    = AssertionAttributesProperty {name = Prelude.pure newValue, ..}
instance Property "Org" AssertionAttributesProperty where
  type PropertyType "Org" AssertionAttributesProperty = Value Prelude.Text
  set newValue AssertionAttributesProperty {..}
    = AssertionAttributesProperty {org = Prelude.pure newValue, ..}
instance Property "Role" AssertionAttributesProperty where
  type PropertyType "Role" AssertionAttributesProperty = Value Prelude.Text
  set newValue AssertionAttributesProperty {..}
    = AssertionAttributesProperty {role = Prelude.pure newValue, ..}
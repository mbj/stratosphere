module Stratosphere.OpenSearchServerless.SecurityConfig.SamlConfigOptionsProperty (
        SamlConfigOptionsProperty(..), mkSamlConfigOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SamlConfigOptionsProperty
  = SamlConfigOptionsProperty {groupAttribute :: (Prelude.Maybe (Value Prelude.Text)),
                               metadata :: (Value Prelude.Text),
                               sessionTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                               userAttribute :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSamlConfigOptionsProperty ::
  Value Prelude.Text -> SamlConfigOptionsProperty
mkSamlConfigOptionsProperty metadata
  = SamlConfigOptionsProperty
      {metadata = metadata, groupAttribute = Prelude.Nothing,
       sessionTimeout = Prelude.Nothing, userAttribute = Prelude.Nothing}
instance ToResourceProperties SamlConfigOptionsProperty where
  toResourceProperties SamlConfigOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchServerless::SecurityConfig.SamlConfigOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Metadata" JSON..= metadata]
                           (Prelude.catMaybes
                              [(JSON..=) "GroupAttribute" Prelude.<$> groupAttribute,
                               (JSON..=) "SessionTimeout" Prelude.<$> sessionTimeout,
                               (JSON..=) "UserAttribute" Prelude.<$> userAttribute]))}
instance JSON.ToJSON SamlConfigOptionsProperty where
  toJSON SamlConfigOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Metadata" JSON..= metadata]
              (Prelude.catMaybes
                 [(JSON..=) "GroupAttribute" Prelude.<$> groupAttribute,
                  (JSON..=) "SessionTimeout" Prelude.<$> sessionTimeout,
                  (JSON..=) "UserAttribute" Prelude.<$> userAttribute])))
instance Property "GroupAttribute" SamlConfigOptionsProperty where
  type PropertyType "GroupAttribute" SamlConfigOptionsProperty = Value Prelude.Text
  set newValue SamlConfigOptionsProperty {..}
    = SamlConfigOptionsProperty
        {groupAttribute = Prelude.pure newValue, ..}
instance Property "Metadata" SamlConfigOptionsProperty where
  type PropertyType "Metadata" SamlConfigOptionsProperty = Value Prelude.Text
  set newValue SamlConfigOptionsProperty {..}
    = SamlConfigOptionsProperty {metadata = newValue, ..}
instance Property "SessionTimeout" SamlConfigOptionsProperty where
  type PropertyType "SessionTimeout" SamlConfigOptionsProperty = Value Prelude.Integer
  set newValue SamlConfigOptionsProperty {..}
    = SamlConfigOptionsProperty
        {sessionTimeout = Prelude.pure newValue, ..}
instance Property "UserAttribute" SamlConfigOptionsProperty where
  type PropertyType "UserAttribute" SamlConfigOptionsProperty = Value Prelude.Text
  set newValue SamlConfigOptionsProperty {..}
    = SamlConfigOptionsProperty
        {userAttribute = Prelude.pure newValue, ..}
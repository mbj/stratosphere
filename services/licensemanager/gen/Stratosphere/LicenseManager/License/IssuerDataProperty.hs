module Stratosphere.LicenseManager.License.IssuerDataProperty (
        IssuerDataProperty(..), mkIssuerDataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IssuerDataProperty
  = IssuerDataProperty {name :: (Value Prelude.Text),
                        signKey :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIssuerDataProperty :: Value Prelude.Text -> IssuerDataProperty
mkIssuerDataProperty name
  = IssuerDataProperty {name = name, signKey = Prelude.Nothing}
instance ToResourceProperties IssuerDataProperty where
  toResourceProperties IssuerDataProperty {..}
    = ResourceProperties
        {awsType = "AWS::LicenseManager::License.IssuerData",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "SignKey" Prelude.<$> signKey]))}
instance JSON.ToJSON IssuerDataProperty where
  toJSON IssuerDataProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "SignKey" Prelude.<$> signKey])))
instance Property "Name" IssuerDataProperty where
  type PropertyType "Name" IssuerDataProperty = Value Prelude.Text
  set newValue IssuerDataProperty {..}
    = IssuerDataProperty {name = newValue, ..}
instance Property "SignKey" IssuerDataProperty where
  type PropertyType "SignKey" IssuerDataProperty = Value Prelude.Text
  set newValue IssuerDataProperty {..}
    = IssuerDataProperty {signKey = Prelude.pure newValue, ..}
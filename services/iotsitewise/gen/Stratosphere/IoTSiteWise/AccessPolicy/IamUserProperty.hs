module Stratosphere.IoTSiteWise.AccessPolicy.IamUserProperty (
        IamUserProperty(..), mkIamUserProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IamUserProperty
  = IamUserProperty {arn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIamUserProperty :: IamUserProperty
mkIamUserProperty = IamUserProperty {arn = Prelude.Nothing}
instance ToResourceProperties IamUserProperty where
  toResourceProperties IamUserProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AccessPolicy.IamUser",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "arn" Prelude.<$> arn])}
instance JSON.ToJSON IamUserProperty where
  toJSON IamUserProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "arn" Prelude.<$> arn]))
instance Property "arn" IamUserProperty where
  type PropertyType "arn" IamUserProperty = Value Prelude.Text
  set newValue IamUserProperty {}
    = IamUserProperty {arn = Prelude.pure newValue, ..}
module Stratosphere.SecurityLake.DataLake.ExpirationProperty (
        ExpirationProperty(..), mkExpirationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExpirationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-datalake-expiration.html>
    ExpirationProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-datalake-expiration.html#cfn-securitylake-datalake-expiration-days>
                        days :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExpirationProperty :: ExpirationProperty
mkExpirationProperty
  = ExpirationProperty
      {haddock_workaround_ = (), days = Prelude.Nothing}
instance ToResourceProperties ExpirationProperty where
  toResourceProperties ExpirationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityLake::DataLake.Expiration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Days" Prelude.<$> days])}
instance JSON.ToJSON ExpirationProperty where
  toJSON ExpirationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Days" Prelude.<$> days]))
instance Property "Days" ExpirationProperty where
  type PropertyType "Days" ExpirationProperty = Value Prelude.Integer
  set newValue ExpirationProperty {..}
    = ExpirationProperty {days = Prelude.pure newValue, ..}
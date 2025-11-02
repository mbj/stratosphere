module Stratosphere.Glue.Database.FederatedDatabaseProperty (
        FederatedDatabaseProperty(..), mkFederatedDatabaseProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FederatedDatabaseProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-federateddatabase.html>
    FederatedDatabaseProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-federateddatabase.html#cfn-glue-database-federateddatabase-connectionname>
                               connectionName :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-federateddatabase.html#cfn-glue-database-federateddatabase-identifier>
                               identifier :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFederatedDatabaseProperty :: FederatedDatabaseProperty
mkFederatedDatabaseProperty
  = FederatedDatabaseProperty
      {haddock_workaround_ = (), connectionName = Prelude.Nothing,
       identifier = Prelude.Nothing}
instance ToResourceProperties FederatedDatabaseProperty where
  toResourceProperties FederatedDatabaseProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Database.FederatedDatabase",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConnectionName" Prelude.<$> connectionName,
                            (JSON..=) "Identifier" Prelude.<$> identifier])}
instance JSON.ToJSON FederatedDatabaseProperty where
  toJSON FederatedDatabaseProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConnectionName" Prelude.<$> connectionName,
               (JSON..=) "Identifier" Prelude.<$> identifier]))
instance Property "ConnectionName" FederatedDatabaseProperty where
  type PropertyType "ConnectionName" FederatedDatabaseProperty = Value Prelude.Text
  set newValue FederatedDatabaseProperty {..}
    = FederatedDatabaseProperty
        {connectionName = Prelude.pure newValue, ..}
instance Property "Identifier" FederatedDatabaseProperty where
  type PropertyType "Identifier" FederatedDatabaseProperty = Value Prelude.Text
  set newValue FederatedDatabaseProperty {..}
    = FederatedDatabaseProperty
        {identifier = Prelude.pure newValue, ..}
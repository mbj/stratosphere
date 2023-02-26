module Stratosphere.Glue.Database.DataLakePrincipalProperty (
        DataLakePrincipalProperty(..), mkDataLakePrincipalProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataLakePrincipalProperty
  = DataLakePrincipalProperty {dataLakePrincipalIdentifier :: (Prelude.Maybe (Value Prelude.Text))}
mkDataLakePrincipalProperty :: DataLakePrincipalProperty
mkDataLakePrincipalProperty
  = DataLakePrincipalProperty
      {dataLakePrincipalIdentifier = Prelude.Nothing}
instance ToResourceProperties DataLakePrincipalProperty where
  toResourceProperties DataLakePrincipalProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Database.DataLakePrincipal",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataLakePrincipalIdentifier"
                              Prelude.<$> dataLakePrincipalIdentifier])}
instance JSON.ToJSON DataLakePrincipalProperty where
  toJSON DataLakePrincipalProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataLakePrincipalIdentifier"
                 Prelude.<$> dataLakePrincipalIdentifier]))
instance Property "DataLakePrincipalIdentifier" DataLakePrincipalProperty where
  type PropertyType "DataLakePrincipalIdentifier" DataLakePrincipalProperty = Value Prelude.Text
  set newValue DataLakePrincipalProperty {}
    = DataLakePrincipalProperty
        {dataLakePrincipalIdentifier = Prelude.pure newValue, ..}
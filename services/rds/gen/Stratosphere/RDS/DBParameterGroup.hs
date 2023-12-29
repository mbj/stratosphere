module Stratosphere.RDS.DBParameterGroup (
        DBParameterGroup(..), mkDBParameterGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DBParameterGroup
  = DBParameterGroup {dBParameterGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                      description :: (Value Prelude.Text),
                      family :: (Value Prelude.Text),
                      parameters :: (Prelude.Maybe JSON.Object),
                      tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDBParameterGroup ::
  Value Prelude.Text -> Value Prelude.Text -> DBParameterGroup
mkDBParameterGroup description family
  = DBParameterGroup
      {description = description, family = family,
       dBParameterGroupName = Prelude.Nothing,
       parameters = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties DBParameterGroup where
  toResourceProperties DBParameterGroup {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBParameterGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Description" JSON..= description, "Family" JSON..= family]
                           (Prelude.catMaybes
                              [(JSON..=) "DBParameterGroupName" Prelude.<$> dBParameterGroupName,
                               (JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DBParameterGroup where
  toJSON DBParameterGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Description" JSON..= description, "Family" JSON..= family]
              (Prelude.catMaybes
                 [(JSON..=) "DBParameterGroupName" Prelude.<$> dBParameterGroupName,
                  (JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DBParameterGroupName" DBParameterGroup where
  type PropertyType "DBParameterGroupName" DBParameterGroup = Value Prelude.Text
  set newValue DBParameterGroup {..}
    = DBParameterGroup
        {dBParameterGroupName = Prelude.pure newValue, ..}
instance Property "Description" DBParameterGroup where
  type PropertyType "Description" DBParameterGroup = Value Prelude.Text
  set newValue DBParameterGroup {..}
    = DBParameterGroup {description = newValue, ..}
instance Property "Family" DBParameterGroup where
  type PropertyType "Family" DBParameterGroup = Value Prelude.Text
  set newValue DBParameterGroup {..}
    = DBParameterGroup {family = newValue, ..}
instance Property "Parameters" DBParameterGroup where
  type PropertyType "Parameters" DBParameterGroup = JSON.Object
  set newValue DBParameterGroup {..}
    = DBParameterGroup {parameters = Prelude.pure newValue, ..}
instance Property "Tags" DBParameterGroup where
  type PropertyType "Tags" DBParameterGroup = [Tag]
  set newValue DBParameterGroup {..}
    = DBParameterGroup {tags = Prelude.pure newValue, ..}
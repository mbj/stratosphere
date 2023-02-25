module Stratosphere.Lightsail.Database.RelationalDatabaseParameterProperty (
        RelationalDatabaseParameterProperty(..),
        mkRelationalDatabaseParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RelationalDatabaseParameterProperty
  = RelationalDatabaseParameterProperty {allowedValues :: (Prelude.Maybe (Value Prelude.Text)),
                                         applyMethod :: (Prelude.Maybe (Value Prelude.Text)),
                                         applyType :: (Prelude.Maybe (Value Prelude.Text)),
                                         dataType :: (Prelude.Maybe (Value Prelude.Text)),
                                         description :: (Prelude.Maybe (Value Prelude.Text)),
                                         isModifiable :: (Prelude.Maybe (Value Prelude.Bool)),
                                         parameterName :: (Prelude.Maybe (Value Prelude.Text)),
                                         parameterValue :: (Prelude.Maybe (Value Prelude.Text))}
mkRelationalDatabaseParameterProperty ::
  RelationalDatabaseParameterProperty
mkRelationalDatabaseParameterProperty
  = RelationalDatabaseParameterProperty
      {allowedValues = Prelude.Nothing, applyMethod = Prelude.Nothing,
       applyType = Prelude.Nothing, dataType = Prelude.Nothing,
       description = Prelude.Nothing, isModifiable = Prelude.Nothing,
       parameterName = Prelude.Nothing, parameterValue = Prelude.Nothing}
instance ToResourceProperties RelationalDatabaseParameterProperty where
  toResourceProperties RelationalDatabaseParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Database.RelationalDatabaseParameter",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllowedValues" Prelude.<$> allowedValues,
                            (JSON..=) "ApplyMethod" Prelude.<$> applyMethod,
                            (JSON..=) "ApplyType" Prelude.<$> applyType,
                            (JSON..=) "DataType" Prelude.<$> dataType,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "IsModifiable" Prelude.<$> isModifiable,
                            (JSON..=) "ParameterName" Prelude.<$> parameterName,
                            (JSON..=) "ParameterValue" Prelude.<$> parameterValue])}
instance JSON.ToJSON RelationalDatabaseParameterProperty where
  toJSON RelationalDatabaseParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllowedValues" Prelude.<$> allowedValues,
               (JSON..=) "ApplyMethod" Prelude.<$> applyMethod,
               (JSON..=) "ApplyType" Prelude.<$> applyType,
               (JSON..=) "DataType" Prelude.<$> dataType,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "IsModifiable" Prelude.<$> isModifiable,
               (JSON..=) "ParameterName" Prelude.<$> parameterName,
               (JSON..=) "ParameterValue" Prelude.<$> parameterValue]))
instance Property "AllowedValues" RelationalDatabaseParameterProperty where
  type PropertyType "AllowedValues" RelationalDatabaseParameterProperty = Value Prelude.Text
  set newValue RelationalDatabaseParameterProperty {..}
    = RelationalDatabaseParameterProperty
        {allowedValues = Prelude.pure newValue, ..}
instance Property "ApplyMethod" RelationalDatabaseParameterProperty where
  type PropertyType "ApplyMethod" RelationalDatabaseParameterProperty = Value Prelude.Text
  set newValue RelationalDatabaseParameterProperty {..}
    = RelationalDatabaseParameterProperty
        {applyMethod = Prelude.pure newValue, ..}
instance Property "ApplyType" RelationalDatabaseParameterProperty where
  type PropertyType "ApplyType" RelationalDatabaseParameterProperty = Value Prelude.Text
  set newValue RelationalDatabaseParameterProperty {..}
    = RelationalDatabaseParameterProperty
        {applyType = Prelude.pure newValue, ..}
instance Property "DataType" RelationalDatabaseParameterProperty where
  type PropertyType "DataType" RelationalDatabaseParameterProperty = Value Prelude.Text
  set newValue RelationalDatabaseParameterProperty {..}
    = RelationalDatabaseParameterProperty
        {dataType = Prelude.pure newValue, ..}
instance Property "Description" RelationalDatabaseParameterProperty where
  type PropertyType "Description" RelationalDatabaseParameterProperty = Value Prelude.Text
  set newValue RelationalDatabaseParameterProperty {..}
    = RelationalDatabaseParameterProperty
        {description = Prelude.pure newValue, ..}
instance Property "IsModifiable" RelationalDatabaseParameterProperty where
  type PropertyType "IsModifiable" RelationalDatabaseParameterProperty = Value Prelude.Bool
  set newValue RelationalDatabaseParameterProperty {..}
    = RelationalDatabaseParameterProperty
        {isModifiable = Prelude.pure newValue, ..}
instance Property "ParameterName" RelationalDatabaseParameterProperty where
  type PropertyType "ParameterName" RelationalDatabaseParameterProperty = Value Prelude.Text
  set newValue RelationalDatabaseParameterProperty {..}
    = RelationalDatabaseParameterProperty
        {parameterName = Prelude.pure newValue, ..}
instance Property "ParameterValue" RelationalDatabaseParameterProperty where
  type PropertyType "ParameterValue" RelationalDatabaseParameterProperty = Value Prelude.Text
  set newValue RelationalDatabaseParameterProperty {..}
    = RelationalDatabaseParameterProperty
        {parameterValue = Prelude.pure newValue, ..}
module Stratosphere.IoT.Dimension (
        Dimension(..), mkDimension
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Dimension
  = Dimension {name :: (Prelude.Maybe (Value Prelude.Text)),
               stringValues :: (ValueList (Value Prelude.Text)),
               tags :: (Prelude.Maybe [Tag]),
               type' :: (Value Prelude.Text)}
mkDimension ::
  ValueList (Value Prelude.Text) -> Value Prelude.Text -> Dimension
mkDimension stringValues type'
  = Dimension
      {stringValues = stringValues, type' = type',
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Dimension where
  toResourceProperties Dimension {..}
    = ResourceProperties
        {awsType = "AWS::IoT::Dimension",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StringValues" JSON..= stringValues, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Dimension where
  toJSON Dimension {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StringValues" JSON..= stringValues, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Name" Dimension where
  type PropertyType "Name" Dimension = Value Prelude.Text
  set newValue Dimension {..}
    = Dimension {name = Prelude.pure newValue, ..}
instance Property "StringValues" Dimension where
  type PropertyType "StringValues" Dimension = ValueList (Value Prelude.Text)
  set newValue Dimension {..}
    = Dimension {stringValues = newValue, ..}
instance Property "Tags" Dimension where
  type PropertyType "Tags" Dimension = [Tag]
  set newValue Dimension {..}
    = Dimension {tags = Prelude.pure newValue, ..}
instance Property "Type" Dimension where
  type PropertyType "Type" Dimension = Value Prelude.Text
  set newValue Dimension {..} = Dimension {type' = newValue, ..}
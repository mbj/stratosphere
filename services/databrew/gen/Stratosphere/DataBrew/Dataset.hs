module Stratosphere.DataBrew.Dataset (
        module Exports, Dataset(..), mkDataset
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Dataset.FormatOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Dataset.InputProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Dataset.PathOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Dataset
  = Dataset {format :: (Prelude.Maybe (Value Prelude.Text)),
             formatOptions :: (Prelude.Maybe FormatOptionsProperty),
             input :: InputProperty,
             name :: (Value Prelude.Text),
             pathOptions :: (Prelude.Maybe PathOptionsProperty),
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataset :: InputProperty -> Value Prelude.Text -> Dataset
mkDataset input name
  = Dataset
      {input = input, name = name, format = Prelude.Nothing,
       formatOptions = Prelude.Nothing, pathOptions = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Dataset where
  toResourceProperties Dataset {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Dataset", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Input" JSON..= input, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Format" Prelude.<$> format,
                               (JSON..=) "FormatOptions" Prelude.<$> formatOptions,
                               (JSON..=) "PathOptions" Prelude.<$> pathOptions,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Dataset where
  toJSON Dataset {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Input" JSON..= input, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Format" Prelude.<$> format,
                  (JSON..=) "FormatOptions" Prelude.<$> formatOptions,
                  (JSON..=) "PathOptions" Prelude.<$> pathOptions,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Format" Dataset where
  type PropertyType "Format" Dataset = Value Prelude.Text
  set newValue Dataset {..}
    = Dataset {format = Prelude.pure newValue, ..}
instance Property "FormatOptions" Dataset where
  type PropertyType "FormatOptions" Dataset = FormatOptionsProperty
  set newValue Dataset {..}
    = Dataset {formatOptions = Prelude.pure newValue, ..}
instance Property "Input" Dataset where
  type PropertyType "Input" Dataset = InputProperty
  set newValue Dataset {..} = Dataset {input = newValue, ..}
instance Property "Name" Dataset where
  type PropertyType "Name" Dataset = Value Prelude.Text
  set newValue Dataset {..} = Dataset {name = newValue, ..}
instance Property "PathOptions" Dataset where
  type PropertyType "PathOptions" Dataset = PathOptionsProperty
  set newValue Dataset {..}
    = Dataset {pathOptions = Prelude.pure newValue, ..}
instance Property "Tags" Dataset where
  type PropertyType "Tags" Dataset = [Tag]
  set newValue Dataset {..}
    = Dataset {tags = Prelude.pure newValue, ..}
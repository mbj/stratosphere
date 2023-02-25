module Stratosphere.ElastiCache.ParameterGroup (
        ParameterGroup(..), mkParameterGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ParameterGroup
  = ParameterGroup {cacheParameterGroupFamily :: (Value Prelude.Text),
                    description :: (Value Prelude.Text),
                    properties :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                    tags :: (Prelude.Maybe [Tag])}
mkParameterGroup ::
  Value Prelude.Text -> Value Prelude.Text -> ParameterGroup
mkParameterGroup cacheParameterGroupFamily description
  = ParameterGroup
      {cacheParameterGroupFamily = cacheParameterGroupFamily,
       description = description, properties = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ParameterGroup where
  toResourceProperties ParameterGroup {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::ParameterGroup",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CacheParameterGroupFamily" JSON..= cacheParameterGroupFamily,
                            "Description" JSON..= description]
                           (Prelude.catMaybes
                              [(JSON..=) "Properties" Prelude.<$> properties,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ParameterGroup where
  toJSON ParameterGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CacheParameterGroupFamily" JSON..= cacheParameterGroupFamily,
               "Description" JSON..= description]
              (Prelude.catMaybes
                 [(JSON..=) "Properties" Prelude.<$> properties,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CacheParameterGroupFamily" ParameterGroup where
  type PropertyType "CacheParameterGroupFamily" ParameterGroup = Value Prelude.Text
  set newValue ParameterGroup {..}
    = ParameterGroup {cacheParameterGroupFamily = newValue, ..}
instance Property "Description" ParameterGroup where
  type PropertyType "Description" ParameterGroup = Value Prelude.Text
  set newValue ParameterGroup {..}
    = ParameterGroup {description = newValue, ..}
instance Property "Properties" ParameterGroup where
  type PropertyType "Properties" ParameterGroup = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ParameterGroup {..}
    = ParameterGroup {properties = Prelude.pure newValue, ..}
instance Property "Tags" ParameterGroup where
  type PropertyType "Tags" ParameterGroup = [Tag]
  set newValue ParameterGroup {..}
    = ParameterGroup {tags = Prelude.pure newValue, ..}
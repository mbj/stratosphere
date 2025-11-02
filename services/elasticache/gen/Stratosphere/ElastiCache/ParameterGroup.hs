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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-parametergroup.html>
    ParameterGroup {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-parametergroup.html#cfn-elasticache-parametergroup-cacheparametergroupfamily>
                    cacheParameterGroupFamily :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-parametergroup.html#cfn-elasticache-parametergroup-description>
                    description :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-parametergroup.html#cfn-elasticache-parametergroup-properties>
                    properties :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-parametergroup.html#cfn-elasticache-parametergroup-tags>
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterGroup ::
  Value Prelude.Text -> Value Prelude.Text -> ParameterGroup
mkParameterGroup cacheParameterGroupFamily description
  = ParameterGroup
      {haddock_workaround_ = (),
       cacheParameterGroupFamily = cacheParameterGroupFamily,
       description = description, properties = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ParameterGroup where
  toResourceProperties ParameterGroup {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::ParameterGroup",
         supportsTags = Prelude.True,
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
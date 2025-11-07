module Stratosphere.OpenSearchServerless.Index.PropertyMappingProperty (
        module Exports, PropertyMappingProperty(..),
        mkPropertyMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OpenSearchServerless.Index.MethodProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PropertyMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-propertymapping.html>
    PropertyMappingProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-propertymapping.html#cfn-opensearchserverless-index-propertymapping-dimension>
                             dimension :: (Prelude.Maybe (Value Prelude.Integer)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-propertymapping.html#cfn-opensearchserverless-index-propertymapping-index>
                             index :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-propertymapping.html#cfn-opensearchserverless-index-propertymapping-method>
                             method :: (Prelude.Maybe MethodProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-propertymapping.html#cfn-opensearchserverless-index-propertymapping-properties>
                             properties :: (Prelude.Maybe (Prelude.Map Prelude.Text PropertyMappingProperty)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-propertymapping.html#cfn-opensearchserverless-index-propertymapping-type>
                             type' :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-propertymapping.html#cfn-opensearchserverless-index-propertymapping-value>
                             value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPropertyMappingProperty ::
  Value Prelude.Text -> PropertyMappingProperty
mkPropertyMappingProperty type'
  = PropertyMappingProperty
      {haddock_workaround_ = (), type' = type',
       dimension = Prelude.Nothing, index = Prelude.Nothing,
       method = Prelude.Nothing, properties = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties PropertyMappingProperty where
  toResourceProperties PropertyMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchServerless::Index.PropertyMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Dimension" Prelude.<$> dimension,
                               (JSON..=) "Index" Prelude.<$> index,
                               (JSON..=) "Method" Prelude.<$> method,
                               (JSON..=) "Properties" Prelude.<$> properties,
                               (JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON PropertyMappingProperty where
  toJSON PropertyMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Dimension" Prelude.<$> dimension,
                  (JSON..=) "Index" Prelude.<$> index,
                  (JSON..=) "Method" Prelude.<$> method,
                  (JSON..=) "Properties" Prelude.<$> properties,
                  (JSON..=) "Value" Prelude.<$> value])))
instance Property "Dimension" PropertyMappingProperty where
  type PropertyType "Dimension" PropertyMappingProperty = Value Prelude.Integer
  set newValue PropertyMappingProperty {..}
    = PropertyMappingProperty {dimension = Prelude.pure newValue, ..}
instance Property "Index" PropertyMappingProperty where
  type PropertyType "Index" PropertyMappingProperty = Value Prelude.Bool
  set newValue PropertyMappingProperty {..}
    = PropertyMappingProperty {index = Prelude.pure newValue, ..}
instance Property "Method" PropertyMappingProperty where
  type PropertyType "Method" PropertyMappingProperty = MethodProperty
  set newValue PropertyMappingProperty {..}
    = PropertyMappingProperty {method = Prelude.pure newValue, ..}
instance Property "Properties" PropertyMappingProperty where
  type PropertyType "Properties" PropertyMappingProperty = Prelude.Map Prelude.Text PropertyMappingProperty
  set newValue PropertyMappingProperty {..}
    = PropertyMappingProperty {properties = Prelude.pure newValue, ..}
instance Property "Type" PropertyMappingProperty where
  type PropertyType "Type" PropertyMappingProperty = Value Prelude.Text
  set newValue PropertyMappingProperty {..}
    = PropertyMappingProperty {type' = newValue, ..}
instance Property "Value" PropertyMappingProperty where
  type PropertyType "Value" PropertyMappingProperty = Value Prelude.Text
  set newValue PropertyMappingProperty {..}
    = PropertyMappingProperty {value = Prelude.pure newValue, ..}
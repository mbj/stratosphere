module Stratosphere.QBusiness.Retriever.RetrieverConfigurationProperty (
        module Exports, RetrieverConfigurationProperty(..),
        mkRetrieverConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.Retriever.KendraIndexConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QBusiness.Retriever.NativeIndexConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data RetrieverConfigurationProperty
  = RetrieverConfigurationProperty {kendraIndexConfiguration :: (Prelude.Maybe KendraIndexConfigurationProperty),
                                    nativeIndexConfiguration :: (Prelude.Maybe NativeIndexConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRetrieverConfigurationProperty :: RetrieverConfigurationProperty
mkRetrieverConfigurationProperty
  = RetrieverConfigurationProperty
      {kendraIndexConfiguration = Prelude.Nothing,
       nativeIndexConfiguration = Prelude.Nothing}
instance ToResourceProperties RetrieverConfigurationProperty where
  toResourceProperties RetrieverConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::Retriever.RetrieverConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "KendraIndexConfiguration"
                              Prelude.<$> kendraIndexConfiguration,
                            (JSON..=) "NativeIndexConfiguration"
                              Prelude.<$> nativeIndexConfiguration])}
instance JSON.ToJSON RetrieverConfigurationProperty where
  toJSON RetrieverConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "KendraIndexConfiguration"
                 Prelude.<$> kendraIndexConfiguration,
               (JSON..=) "NativeIndexConfiguration"
                 Prelude.<$> nativeIndexConfiguration]))
instance Property "KendraIndexConfiguration" RetrieverConfigurationProperty where
  type PropertyType "KendraIndexConfiguration" RetrieverConfigurationProperty = KendraIndexConfigurationProperty
  set newValue RetrieverConfigurationProperty {..}
    = RetrieverConfigurationProperty
        {kendraIndexConfiguration = Prelude.pure newValue, ..}
instance Property "NativeIndexConfiguration" RetrieverConfigurationProperty where
  type PropertyType "NativeIndexConfiguration" RetrieverConfigurationProperty = NativeIndexConfigurationProperty
  set newValue RetrieverConfigurationProperty {..}
    = RetrieverConfigurationProperty
        {nativeIndexConfiguration = Prelude.pure newValue, ..}
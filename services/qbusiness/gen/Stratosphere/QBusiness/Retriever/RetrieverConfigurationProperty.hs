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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-retriever-retrieverconfiguration.html>
    RetrieverConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-retriever-retrieverconfiguration.html#cfn-qbusiness-retriever-retrieverconfiguration-kendraindexconfiguration>
                                    kendraIndexConfiguration :: (Prelude.Maybe KendraIndexConfigurationProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-retriever-retrieverconfiguration.html#cfn-qbusiness-retriever-retrieverconfiguration-nativeindexconfiguration>
                                    nativeIndexConfiguration :: (Prelude.Maybe NativeIndexConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRetrieverConfigurationProperty :: RetrieverConfigurationProperty
mkRetrieverConfigurationProperty
  = RetrieverConfigurationProperty
      {haddock_workaround_ = (),
       kendraIndexConfiguration = Prelude.Nothing,
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
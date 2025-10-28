module Stratosphere.Kendra.DataSource.ConfluencePageConfigurationProperty (
        module Exports, ConfluencePageConfigurationProperty(..),
        mkConfluencePageConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.ConfluencePageToIndexFieldMappingProperty as Exports
import Stratosphere.ResourceProperties
data ConfluencePageConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluencepageconfiguration.html>
    ConfluencePageConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluencepageconfiguration.html#cfn-kendra-datasource-confluencepageconfiguration-pagefieldmappings>
                                         pageFieldMappings :: (Prelude.Maybe [ConfluencePageToIndexFieldMappingProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfluencePageConfigurationProperty ::
  ConfluencePageConfigurationProperty
mkConfluencePageConfigurationProperty
  = ConfluencePageConfigurationProperty
      {haddock_workaround_ = (), pageFieldMappings = Prelude.Nothing}
instance ToResourceProperties ConfluencePageConfigurationProperty where
  toResourceProperties ConfluencePageConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.ConfluencePageConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PageFieldMappings" Prelude.<$> pageFieldMappings])}
instance JSON.ToJSON ConfluencePageConfigurationProperty where
  toJSON ConfluencePageConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PageFieldMappings" Prelude.<$> pageFieldMappings]))
instance Property "PageFieldMappings" ConfluencePageConfigurationProperty where
  type PropertyType "PageFieldMappings" ConfluencePageConfigurationProperty = [ConfluencePageToIndexFieldMappingProperty]
  set newValue ConfluencePageConfigurationProperty {..}
    = ConfluencePageConfigurationProperty
        {pageFieldMappings = Prelude.pure newValue, ..}
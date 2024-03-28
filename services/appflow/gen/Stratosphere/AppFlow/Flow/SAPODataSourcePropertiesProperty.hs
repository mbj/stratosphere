module Stratosphere.AppFlow.Flow.SAPODataSourcePropertiesProperty (
        module Exports, SAPODataSourcePropertiesProperty(..),
        mkSAPODataSourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.SAPODataPaginationConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.SAPODataParallelismConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SAPODataSourcePropertiesProperty
  = SAPODataSourcePropertiesProperty {objectPath :: (Value Prelude.Text),
                                      paginationConfig :: (Prelude.Maybe SAPODataPaginationConfigProperty),
                                      parallelismConfig :: (Prelude.Maybe SAPODataParallelismConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSAPODataSourcePropertiesProperty ::
  Value Prelude.Text -> SAPODataSourcePropertiesProperty
mkSAPODataSourcePropertiesProperty objectPath
  = SAPODataSourcePropertiesProperty
      {objectPath = objectPath, paginationConfig = Prelude.Nothing,
       parallelismConfig = Prelude.Nothing}
instance ToResourceProperties SAPODataSourcePropertiesProperty where
  toResourceProperties SAPODataSourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.SAPODataSourceProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ObjectPath" JSON..= objectPath]
                           (Prelude.catMaybes
                              [(JSON..=) "paginationConfig" Prelude.<$> paginationConfig,
                               (JSON..=) "parallelismConfig" Prelude.<$> parallelismConfig]))}
instance JSON.ToJSON SAPODataSourcePropertiesProperty where
  toJSON SAPODataSourcePropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ObjectPath" JSON..= objectPath]
              (Prelude.catMaybes
                 [(JSON..=) "paginationConfig" Prelude.<$> paginationConfig,
                  (JSON..=) "parallelismConfig" Prelude.<$> parallelismConfig])))
instance Property "ObjectPath" SAPODataSourcePropertiesProperty where
  type PropertyType "ObjectPath" SAPODataSourcePropertiesProperty = Value Prelude.Text
  set newValue SAPODataSourcePropertiesProperty {..}
    = SAPODataSourcePropertiesProperty {objectPath = newValue, ..}
instance Property "paginationConfig" SAPODataSourcePropertiesProperty where
  type PropertyType "paginationConfig" SAPODataSourcePropertiesProperty = SAPODataPaginationConfigProperty
  set newValue SAPODataSourcePropertiesProperty {..}
    = SAPODataSourcePropertiesProperty
        {paginationConfig = Prelude.pure newValue, ..}
instance Property "parallelismConfig" SAPODataSourcePropertiesProperty where
  type PropertyType "parallelismConfig" SAPODataSourcePropertiesProperty = SAPODataParallelismConfigProperty
  set newValue SAPODataSourcePropertiesProperty {..}
    = SAPODataSourcePropertiesProperty
        {parallelismConfig = Prelude.pure newValue, ..}
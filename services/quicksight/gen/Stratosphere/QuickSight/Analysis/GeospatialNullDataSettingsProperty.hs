module Stratosphere.QuickSight.Analysis.GeospatialNullDataSettingsProperty (
        module Exports, GeospatialNullDataSettingsProperty(..),
        mkGeospatialNullDataSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GeospatialNullSymbolStyleProperty as Exports
import Stratosphere.ResourceProperties
data GeospatialNullDataSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialnulldatasettings.html>
    GeospatialNullDataSettingsProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialnulldatasettings.html#cfn-quicksight-analysis-geospatialnulldatasettings-symbolstyle>
                                        symbolStyle :: GeospatialNullSymbolStyleProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialNullDataSettingsProperty ::
  GeospatialNullSymbolStyleProperty
  -> GeospatialNullDataSettingsProperty
mkGeospatialNullDataSettingsProperty symbolStyle
  = GeospatialNullDataSettingsProperty
      {haddock_workaround_ = (), symbolStyle = symbolStyle}
instance ToResourceProperties GeospatialNullDataSettingsProperty where
  toResourceProperties GeospatialNullDataSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GeospatialNullDataSettings",
         supportsTags = Prelude.False,
         properties = ["SymbolStyle" JSON..= symbolStyle]}
instance JSON.ToJSON GeospatialNullDataSettingsProperty where
  toJSON GeospatialNullDataSettingsProperty {..}
    = JSON.object ["SymbolStyle" JSON..= symbolStyle]
instance Property "SymbolStyle" GeospatialNullDataSettingsProperty where
  type PropertyType "SymbolStyle" GeospatialNullDataSettingsProperty = GeospatialNullSymbolStyleProperty
  set newValue GeospatialNullDataSettingsProperty {..}
    = GeospatialNullDataSettingsProperty {symbolStyle = newValue, ..}
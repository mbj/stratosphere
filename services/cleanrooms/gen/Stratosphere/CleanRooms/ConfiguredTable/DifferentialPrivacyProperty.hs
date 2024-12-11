module Stratosphere.CleanRooms.ConfiguredTable.DifferentialPrivacyProperty (
        module Exports, DifferentialPrivacyProperty(..),
        mkDifferentialPrivacyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.ConfiguredTable.DifferentialPrivacyColumnProperty as Exports
import Stratosphere.ResourceProperties
data DifferentialPrivacyProperty
  = DifferentialPrivacyProperty {columns :: [DifferentialPrivacyColumnProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDifferentialPrivacyProperty ::
  [DifferentialPrivacyColumnProperty] -> DifferentialPrivacyProperty
mkDifferentialPrivacyProperty columns
  = DifferentialPrivacyProperty {columns = columns}
instance ToResourceProperties DifferentialPrivacyProperty where
  toResourceProperties DifferentialPrivacyProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTable.DifferentialPrivacy",
         supportsTags = Prelude.False,
         properties = ["Columns" JSON..= columns]}
instance JSON.ToJSON DifferentialPrivacyProperty where
  toJSON DifferentialPrivacyProperty {..}
    = JSON.object ["Columns" JSON..= columns]
instance Property "Columns" DifferentialPrivacyProperty where
  type PropertyType "Columns" DifferentialPrivacyProperty = [DifferentialPrivacyColumnProperty]
  set newValue DifferentialPrivacyProperty {}
    = DifferentialPrivacyProperty {columns = newValue, ..}
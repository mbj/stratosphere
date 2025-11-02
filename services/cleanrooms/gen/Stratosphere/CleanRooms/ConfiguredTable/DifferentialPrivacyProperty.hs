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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-differentialprivacy.html>
    DifferentialPrivacyProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-differentialprivacy.html#cfn-cleanrooms-configuredtable-differentialprivacy-columns>
                                 columns :: [DifferentialPrivacyColumnProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDifferentialPrivacyProperty ::
  [DifferentialPrivacyColumnProperty] -> DifferentialPrivacyProperty
mkDifferentialPrivacyProperty columns
  = DifferentialPrivacyProperty
      {haddock_workaround_ = (), columns = columns}
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
  set newValue DifferentialPrivacyProperty {..}
    = DifferentialPrivacyProperty {columns = newValue, ..}
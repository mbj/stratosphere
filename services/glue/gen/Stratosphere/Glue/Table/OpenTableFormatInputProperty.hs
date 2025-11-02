module Stratosphere.Glue.Table.OpenTableFormatInputProperty (
        module Exports, OpenTableFormatInputProperty(..),
        mkOpenTableFormatInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Table.IcebergInputProperty as Exports
import Stratosphere.ResourceProperties
data OpenTableFormatInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-opentableformatinput.html>
    OpenTableFormatInputProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-opentableformatinput.html#cfn-glue-table-opentableformatinput-iceberginput>
                                  icebergInput :: (Prelude.Maybe IcebergInputProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenTableFormatInputProperty :: OpenTableFormatInputProperty
mkOpenTableFormatInputProperty
  = OpenTableFormatInputProperty
      {haddock_workaround_ = (), icebergInput = Prelude.Nothing}
instance ToResourceProperties OpenTableFormatInputProperty where
  toResourceProperties OpenTableFormatInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Table.OpenTableFormatInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IcebergInput" Prelude.<$> icebergInput])}
instance JSON.ToJSON OpenTableFormatInputProperty where
  toJSON OpenTableFormatInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IcebergInput" Prelude.<$> icebergInput]))
instance Property "IcebergInput" OpenTableFormatInputProperty where
  type PropertyType "IcebergInput" OpenTableFormatInputProperty = IcebergInputProperty
  set newValue OpenTableFormatInputProperty {..}
    = OpenTableFormatInputProperty
        {icebergInput = Prelude.pure newValue, ..}
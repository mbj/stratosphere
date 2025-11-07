module Stratosphere.DataZone.Connection.GluePropertiesInputProperty (
        module Exports, GluePropertiesInputProperty(..),
        mkGluePropertiesInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.Connection.GlueConnectionInputProperty as Exports
import Stratosphere.ResourceProperties
data GluePropertiesInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-gluepropertiesinput.html>
    GluePropertiesInputProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-gluepropertiesinput.html#cfn-datazone-connection-gluepropertiesinput-glueconnectioninput>
                                 glueConnectionInput :: (Prelude.Maybe GlueConnectionInputProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGluePropertiesInputProperty :: GluePropertiesInputProperty
mkGluePropertiesInputProperty
  = GluePropertiesInputProperty
      {haddock_workaround_ = (), glueConnectionInput = Prelude.Nothing}
instance ToResourceProperties GluePropertiesInputProperty where
  toResourceProperties GluePropertiesInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Connection.GluePropertiesInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GlueConnectionInput" Prelude.<$> glueConnectionInput])}
instance JSON.ToJSON GluePropertiesInputProperty where
  toJSON GluePropertiesInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GlueConnectionInput" Prelude.<$> glueConnectionInput]))
instance Property "GlueConnectionInput" GluePropertiesInputProperty where
  type PropertyType "GlueConnectionInput" GluePropertiesInputProperty = GlueConnectionInputProperty
  set newValue GluePropertiesInputProperty {..}
    = GluePropertiesInputProperty
        {glueConnectionInput = Prelude.pure newValue, ..}
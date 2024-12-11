module Stratosphere.EC2.VPNConnection.VpnTunnelOptionsSpecificationProperty (
        module Exports, VpnTunnelOptionsSpecificationProperty(..),
        mkVpnTunnelOptionsSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.VPNConnection.IKEVersionsRequestListValueProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.VPNConnection.Phase1DHGroupNumbersRequestListValueProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.VPNConnection.Phase1EncryptionAlgorithmsRequestListValueProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.VPNConnection.Phase1IntegrityAlgorithmsRequestListValueProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.VPNConnection.Phase2DHGroupNumbersRequestListValueProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.VPNConnection.Phase2EncryptionAlgorithmsRequestListValueProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.VPNConnection.Phase2IntegrityAlgorithmsRequestListValueProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.VPNConnection.VpnTunnelLogOptionsSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpnTunnelOptionsSpecificationProperty
  = VpnTunnelOptionsSpecificationProperty {dPDTimeoutAction :: (Prelude.Maybe (Value Prelude.Text)),
                                           dPDTimeoutSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                           enableTunnelLifecycleControl :: (Prelude.Maybe (Value Prelude.Bool)),
                                           iKEVersions :: (Prelude.Maybe [IKEVersionsRequestListValueProperty]),
                                           logOptions :: (Prelude.Maybe VpnTunnelLogOptionsSpecificationProperty),
                                           phase1DHGroupNumbers :: (Prelude.Maybe [Phase1DHGroupNumbersRequestListValueProperty]),
                                           phase1EncryptionAlgorithms :: (Prelude.Maybe [Phase1EncryptionAlgorithmsRequestListValueProperty]),
                                           phase1IntegrityAlgorithms :: (Prelude.Maybe [Phase1IntegrityAlgorithmsRequestListValueProperty]),
                                           phase1LifetimeSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                           phase2DHGroupNumbers :: (Prelude.Maybe [Phase2DHGroupNumbersRequestListValueProperty]),
                                           phase2EncryptionAlgorithms :: (Prelude.Maybe [Phase2EncryptionAlgorithmsRequestListValueProperty]),
                                           phase2IntegrityAlgorithms :: (Prelude.Maybe [Phase2IntegrityAlgorithmsRequestListValueProperty]),
                                           phase2LifetimeSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                           preSharedKey :: (Prelude.Maybe (Value Prelude.Text)),
                                           rekeyFuzzPercentage :: (Prelude.Maybe (Value Prelude.Integer)),
                                           rekeyMarginTimeSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                           replayWindowSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                           startupAction :: (Prelude.Maybe (Value Prelude.Text)),
                                           tunnelInsideCidr :: (Prelude.Maybe (Value Prelude.Text)),
                                           tunnelInsideIpv6Cidr :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpnTunnelOptionsSpecificationProperty ::
  VpnTunnelOptionsSpecificationProperty
mkVpnTunnelOptionsSpecificationProperty
  = VpnTunnelOptionsSpecificationProperty
      {dPDTimeoutAction = Prelude.Nothing,
       dPDTimeoutSeconds = Prelude.Nothing,
       enableTunnelLifecycleControl = Prelude.Nothing,
       iKEVersions = Prelude.Nothing, logOptions = Prelude.Nothing,
       phase1DHGroupNumbers = Prelude.Nothing,
       phase1EncryptionAlgorithms = Prelude.Nothing,
       phase1IntegrityAlgorithms = Prelude.Nothing,
       phase1LifetimeSeconds = Prelude.Nothing,
       phase2DHGroupNumbers = Prelude.Nothing,
       phase2EncryptionAlgorithms = Prelude.Nothing,
       phase2IntegrityAlgorithms = Prelude.Nothing,
       phase2LifetimeSeconds = Prelude.Nothing,
       preSharedKey = Prelude.Nothing,
       rekeyFuzzPercentage = Prelude.Nothing,
       rekeyMarginTimeSeconds = Prelude.Nothing,
       replayWindowSize = Prelude.Nothing,
       startupAction = Prelude.Nothing,
       tunnelInsideCidr = Prelude.Nothing,
       tunnelInsideIpv6Cidr = Prelude.Nothing}
instance ToResourceProperties VpnTunnelOptionsSpecificationProperty where
  toResourceProperties VpnTunnelOptionsSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPNConnection.VpnTunnelOptionsSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DPDTimeoutAction" Prelude.<$> dPDTimeoutAction,
                            (JSON..=) "DPDTimeoutSeconds" Prelude.<$> dPDTimeoutSeconds,
                            (JSON..=) "EnableTunnelLifecycleControl"
                              Prelude.<$> enableTunnelLifecycleControl,
                            (JSON..=) "IKEVersions" Prelude.<$> iKEVersions,
                            (JSON..=) "LogOptions" Prelude.<$> logOptions,
                            (JSON..=) "Phase1DHGroupNumbers" Prelude.<$> phase1DHGroupNumbers,
                            (JSON..=) "Phase1EncryptionAlgorithms"
                              Prelude.<$> phase1EncryptionAlgorithms,
                            (JSON..=) "Phase1IntegrityAlgorithms"
                              Prelude.<$> phase1IntegrityAlgorithms,
                            (JSON..=) "Phase1LifetimeSeconds"
                              Prelude.<$> phase1LifetimeSeconds,
                            (JSON..=) "Phase2DHGroupNumbers" Prelude.<$> phase2DHGroupNumbers,
                            (JSON..=) "Phase2EncryptionAlgorithms"
                              Prelude.<$> phase2EncryptionAlgorithms,
                            (JSON..=) "Phase2IntegrityAlgorithms"
                              Prelude.<$> phase2IntegrityAlgorithms,
                            (JSON..=) "Phase2LifetimeSeconds"
                              Prelude.<$> phase2LifetimeSeconds,
                            (JSON..=) "PreSharedKey" Prelude.<$> preSharedKey,
                            (JSON..=) "RekeyFuzzPercentage" Prelude.<$> rekeyFuzzPercentage,
                            (JSON..=) "RekeyMarginTimeSeconds"
                              Prelude.<$> rekeyMarginTimeSeconds,
                            (JSON..=) "ReplayWindowSize" Prelude.<$> replayWindowSize,
                            (JSON..=) "StartupAction" Prelude.<$> startupAction,
                            (JSON..=) "TunnelInsideCidr" Prelude.<$> tunnelInsideCidr,
                            (JSON..=) "TunnelInsideIpv6Cidr"
                              Prelude.<$> tunnelInsideIpv6Cidr])}
instance JSON.ToJSON VpnTunnelOptionsSpecificationProperty where
  toJSON VpnTunnelOptionsSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DPDTimeoutAction" Prelude.<$> dPDTimeoutAction,
               (JSON..=) "DPDTimeoutSeconds" Prelude.<$> dPDTimeoutSeconds,
               (JSON..=) "EnableTunnelLifecycleControl"
                 Prelude.<$> enableTunnelLifecycleControl,
               (JSON..=) "IKEVersions" Prelude.<$> iKEVersions,
               (JSON..=) "LogOptions" Prelude.<$> logOptions,
               (JSON..=) "Phase1DHGroupNumbers" Prelude.<$> phase1DHGroupNumbers,
               (JSON..=) "Phase1EncryptionAlgorithms"
                 Prelude.<$> phase1EncryptionAlgorithms,
               (JSON..=) "Phase1IntegrityAlgorithms"
                 Prelude.<$> phase1IntegrityAlgorithms,
               (JSON..=) "Phase1LifetimeSeconds"
                 Prelude.<$> phase1LifetimeSeconds,
               (JSON..=) "Phase2DHGroupNumbers" Prelude.<$> phase2DHGroupNumbers,
               (JSON..=) "Phase2EncryptionAlgorithms"
                 Prelude.<$> phase2EncryptionAlgorithms,
               (JSON..=) "Phase2IntegrityAlgorithms"
                 Prelude.<$> phase2IntegrityAlgorithms,
               (JSON..=) "Phase2LifetimeSeconds"
                 Prelude.<$> phase2LifetimeSeconds,
               (JSON..=) "PreSharedKey" Prelude.<$> preSharedKey,
               (JSON..=) "RekeyFuzzPercentage" Prelude.<$> rekeyFuzzPercentage,
               (JSON..=) "RekeyMarginTimeSeconds"
                 Prelude.<$> rekeyMarginTimeSeconds,
               (JSON..=) "ReplayWindowSize" Prelude.<$> replayWindowSize,
               (JSON..=) "StartupAction" Prelude.<$> startupAction,
               (JSON..=) "TunnelInsideCidr" Prelude.<$> tunnelInsideCidr,
               (JSON..=) "TunnelInsideIpv6Cidr"
                 Prelude.<$> tunnelInsideIpv6Cidr]))
instance Property "DPDTimeoutAction" VpnTunnelOptionsSpecificationProperty where
  type PropertyType "DPDTimeoutAction" VpnTunnelOptionsSpecificationProperty = Value Prelude.Text
  set newValue VpnTunnelOptionsSpecificationProperty {..}
    = VpnTunnelOptionsSpecificationProperty
        {dPDTimeoutAction = Prelude.pure newValue, ..}
instance Property "DPDTimeoutSeconds" VpnTunnelOptionsSpecificationProperty where
  type PropertyType "DPDTimeoutSeconds" VpnTunnelOptionsSpecificationProperty = Value Prelude.Integer
  set newValue VpnTunnelOptionsSpecificationProperty {..}
    = VpnTunnelOptionsSpecificationProperty
        {dPDTimeoutSeconds = Prelude.pure newValue, ..}
instance Property "EnableTunnelLifecycleControl" VpnTunnelOptionsSpecificationProperty where
  type PropertyType "EnableTunnelLifecycleControl" VpnTunnelOptionsSpecificationProperty = Value Prelude.Bool
  set newValue VpnTunnelOptionsSpecificationProperty {..}
    = VpnTunnelOptionsSpecificationProperty
        {enableTunnelLifecycleControl = Prelude.pure newValue, ..}
instance Property "IKEVersions" VpnTunnelOptionsSpecificationProperty where
  type PropertyType "IKEVersions" VpnTunnelOptionsSpecificationProperty = [IKEVersionsRequestListValueProperty]
  set newValue VpnTunnelOptionsSpecificationProperty {..}
    = VpnTunnelOptionsSpecificationProperty
        {iKEVersions = Prelude.pure newValue, ..}
instance Property "LogOptions" VpnTunnelOptionsSpecificationProperty where
  type PropertyType "LogOptions" VpnTunnelOptionsSpecificationProperty = VpnTunnelLogOptionsSpecificationProperty
  set newValue VpnTunnelOptionsSpecificationProperty {..}
    = VpnTunnelOptionsSpecificationProperty
        {logOptions = Prelude.pure newValue, ..}
instance Property "Phase1DHGroupNumbers" VpnTunnelOptionsSpecificationProperty where
  type PropertyType "Phase1DHGroupNumbers" VpnTunnelOptionsSpecificationProperty = [Phase1DHGroupNumbersRequestListValueProperty]
  set newValue VpnTunnelOptionsSpecificationProperty {..}
    = VpnTunnelOptionsSpecificationProperty
        {phase1DHGroupNumbers = Prelude.pure newValue, ..}
instance Property "Phase1EncryptionAlgorithms" VpnTunnelOptionsSpecificationProperty where
  type PropertyType "Phase1EncryptionAlgorithms" VpnTunnelOptionsSpecificationProperty = [Phase1EncryptionAlgorithmsRequestListValueProperty]
  set newValue VpnTunnelOptionsSpecificationProperty {..}
    = VpnTunnelOptionsSpecificationProperty
        {phase1EncryptionAlgorithms = Prelude.pure newValue, ..}
instance Property "Phase1IntegrityAlgorithms" VpnTunnelOptionsSpecificationProperty where
  type PropertyType "Phase1IntegrityAlgorithms" VpnTunnelOptionsSpecificationProperty = [Phase1IntegrityAlgorithmsRequestListValueProperty]
  set newValue VpnTunnelOptionsSpecificationProperty {..}
    = VpnTunnelOptionsSpecificationProperty
        {phase1IntegrityAlgorithms = Prelude.pure newValue, ..}
instance Property "Phase1LifetimeSeconds" VpnTunnelOptionsSpecificationProperty where
  type PropertyType "Phase1LifetimeSeconds" VpnTunnelOptionsSpecificationProperty = Value Prelude.Integer
  set newValue VpnTunnelOptionsSpecificationProperty {..}
    = VpnTunnelOptionsSpecificationProperty
        {phase1LifetimeSeconds = Prelude.pure newValue, ..}
instance Property "Phase2DHGroupNumbers" VpnTunnelOptionsSpecificationProperty where
  type PropertyType "Phase2DHGroupNumbers" VpnTunnelOptionsSpecificationProperty = [Phase2DHGroupNumbersRequestListValueProperty]
  set newValue VpnTunnelOptionsSpecificationProperty {..}
    = VpnTunnelOptionsSpecificationProperty
        {phase2DHGroupNumbers = Prelude.pure newValue, ..}
instance Property "Phase2EncryptionAlgorithms" VpnTunnelOptionsSpecificationProperty where
  type PropertyType "Phase2EncryptionAlgorithms" VpnTunnelOptionsSpecificationProperty = [Phase2EncryptionAlgorithmsRequestListValueProperty]
  set newValue VpnTunnelOptionsSpecificationProperty {..}
    = VpnTunnelOptionsSpecificationProperty
        {phase2EncryptionAlgorithms = Prelude.pure newValue, ..}
instance Property "Phase2IntegrityAlgorithms" VpnTunnelOptionsSpecificationProperty where
  type PropertyType "Phase2IntegrityAlgorithms" VpnTunnelOptionsSpecificationProperty = [Phase2IntegrityAlgorithmsRequestListValueProperty]
  set newValue VpnTunnelOptionsSpecificationProperty {..}
    = VpnTunnelOptionsSpecificationProperty
        {phase2IntegrityAlgorithms = Prelude.pure newValue, ..}
instance Property "Phase2LifetimeSeconds" VpnTunnelOptionsSpecificationProperty where
  type PropertyType "Phase2LifetimeSeconds" VpnTunnelOptionsSpecificationProperty = Value Prelude.Integer
  set newValue VpnTunnelOptionsSpecificationProperty {..}
    = VpnTunnelOptionsSpecificationProperty
        {phase2LifetimeSeconds = Prelude.pure newValue, ..}
instance Property "PreSharedKey" VpnTunnelOptionsSpecificationProperty where
  type PropertyType "PreSharedKey" VpnTunnelOptionsSpecificationProperty = Value Prelude.Text
  set newValue VpnTunnelOptionsSpecificationProperty {..}
    = VpnTunnelOptionsSpecificationProperty
        {preSharedKey = Prelude.pure newValue, ..}
instance Property "RekeyFuzzPercentage" VpnTunnelOptionsSpecificationProperty where
  type PropertyType "RekeyFuzzPercentage" VpnTunnelOptionsSpecificationProperty = Value Prelude.Integer
  set newValue VpnTunnelOptionsSpecificationProperty {..}
    = VpnTunnelOptionsSpecificationProperty
        {rekeyFuzzPercentage = Prelude.pure newValue, ..}
instance Property "RekeyMarginTimeSeconds" VpnTunnelOptionsSpecificationProperty where
  type PropertyType "RekeyMarginTimeSeconds" VpnTunnelOptionsSpecificationProperty = Value Prelude.Integer
  set newValue VpnTunnelOptionsSpecificationProperty {..}
    = VpnTunnelOptionsSpecificationProperty
        {rekeyMarginTimeSeconds = Prelude.pure newValue, ..}
instance Property "ReplayWindowSize" VpnTunnelOptionsSpecificationProperty where
  type PropertyType "ReplayWindowSize" VpnTunnelOptionsSpecificationProperty = Value Prelude.Integer
  set newValue VpnTunnelOptionsSpecificationProperty {..}
    = VpnTunnelOptionsSpecificationProperty
        {replayWindowSize = Prelude.pure newValue, ..}
instance Property "StartupAction" VpnTunnelOptionsSpecificationProperty where
  type PropertyType "StartupAction" VpnTunnelOptionsSpecificationProperty = Value Prelude.Text
  set newValue VpnTunnelOptionsSpecificationProperty {..}
    = VpnTunnelOptionsSpecificationProperty
        {startupAction = Prelude.pure newValue, ..}
instance Property "TunnelInsideCidr" VpnTunnelOptionsSpecificationProperty where
  type PropertyType "TunnelInsideCidr" VpnTunnelOptionsSpecificationProperty = Value Prelude.Text
  set newValue VpnTunnelOptionsSpecificationProperty {..}
    = VpnTunnelOptionsSpecificationProperty
        {tunnelInsideCidr = Prelude.pure newValue, ..}
instance Property "TunnelInsideIpv6Cidr" VpnTunnelOptionsSpecificationProperty where
  type PropertyType "TunnelInsideIpv6Cidr" VpnTunnelOptionsSpecificationProperty = Value Prelude.Text
  set newValue VpnTunnelOptionsSpecificationProperty {..}
    = VpnTunnelOptionsSpecificationProperty
        {tunnelInsideIpv6Cidr = Prelude.pure newValue, ..}
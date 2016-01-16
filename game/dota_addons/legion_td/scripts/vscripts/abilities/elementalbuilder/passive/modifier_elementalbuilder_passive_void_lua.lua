modifier_elementalbuilder_passive_void_lua = class({})

--------------------------------------------------------------------------------

function modifier_elementalbuilder_passive_void_lua:IsHidden()
	if self:GetStackCount() < 1 then return true else return false end
end

--------------------------------------------------------------------------------

function modifier_elementalbuilder_passive_void_lua:GetTexture()
	return "enigma_midnight_pulse"
end

--------------------------------------------------------------------------------

function modifier_elementalbuilder_passive_void_lua:OnCreated( kv )
	self.void_cooldown_reduction = self:GetAbility():GetSpecialValueFor("cooldown_reduction_percent")
	if IsServer() then
		--
	end
end

--------------------------------------------------------------------------------

function modifier_elementalbuilder_passive_void_lua:OnRefresh( kv )
	self.void_cooldown_reduction = self:GetAbility():GetSpecialValueFor("cooldown_reduction_percent")
	if IsServer() then
		--
	end
end

--------------------------------------------------------------------------------

function modifier_elementalbuilder_passive_void_lua:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_COOLDOWN_PERCENTAGE,
	}
	return funcs
end

--------------------------------------------------------------------------------

function modifier_elementalbuilder_passive_void_lua:GetModifierPercentageCooldown( params )
	return self.void_cooldown_reduction * self:GetStackCount()
end

--------------------------------------------------------------------------------